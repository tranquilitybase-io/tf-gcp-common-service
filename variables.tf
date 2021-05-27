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

variable "num_password_create" {
  type = number
  default = 0
  description = "Defines how many passwords to create"
}

variable "create_password" {
  description = "Defines whether to create password"
  type = bool
  default = true
}

variable "password_length" {
  type = number
  default = 24
  description = "Length of password"
}

variable "secret_name" {
  type = list
  description = ""
  default = []
}

variable "replication_region" {
  description = ""
  type = string
  default = "europe-west1"
}

variable "project_id" {
  description = ""
  type = string
  default = ""
}
