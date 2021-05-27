# Copyright 2021 The Tranquility Base Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

resource "random_password" "password" {
  count  = var.create_password ? var.num_password_create : 0

  length = var.password_length
}

resource "google_secret_manager_secret" "secret-basic" {
  count = length(var.secret_name)

  project   = var.project_id
  secret_id = var.secret_name[count.index]

  replication {
    user_managed {
      replicas {
        location = var.replication_region
      }
    }
  }
}

resource "google_secret_manager_secret_version" "secret-version-basic" {
  count = length(var.secret_name)

  secret      = element(google_secret_manager_secret.secret-basic.*.id, count.index)
  secret_data =  element(random_password.password.*.result, count.index)
}
