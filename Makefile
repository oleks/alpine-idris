# A Makefile for easier Dockerfile testing

# Copyright 2017 oleks <oleks@oleks.info>
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License. A copy of the License
# text is included alongside this file as LICENSE.md.
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
# License for the specific language governing permissions and limitations under
# the License.

.PHONY: build interact

name:=$(shell basename $(CURDIR))
version:=0.0.1
tag:=$(name):v$(version)

build: Dockerfile Makefile
	docker build \
	  --tag $(tag) \
	  .

interact: build Dockerfile Makefile
	docker run \
	  --interactive --tty --rm \
	  $(tag)
