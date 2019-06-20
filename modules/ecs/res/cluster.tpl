#!/bin/bash -v

echo ECS_CLUSTER=${ecs_cluster} >> /etc/ecs/ecs.config
start ecs
