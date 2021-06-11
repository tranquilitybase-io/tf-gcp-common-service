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
  description = "Defines how many passwords to create"
  type        = number
  default     = 0
}

variable "create_password" {
  description = "Defines whether to create password"
  type        = bool
  default     = true
}

variable "password_length" {
  description = "Length of password"
  type        = number
  default     = 24
}

variable "secret_name" {
  description = "List of strings defining secret names"
  type        = list(any)
  default     = []
}

variable "replication_region" {
  description = "Regions which secrets are replicated in"
  type        = string
  default     = "europe-west1"
}

variable "project_id" {
  description = "Project which will contain the secrets"
  type        = string
  default     = ""
}
