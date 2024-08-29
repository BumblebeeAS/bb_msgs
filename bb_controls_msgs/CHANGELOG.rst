^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package bb_controls_msgs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
0.0.2 (2024-05-18)
------------------
- Adds NAV2 to ASV4ControllerSelector enum

0.0.1 (2024-05-18)
------------------
- Adds initial interfaces used by controls repo.
- Removed ModelControllerConfig as a msg since it is not used in any pub/sub anywhere.
  (It also fails some linter checks `max_serialized_size_bb_controls_msgs__msg__ModelControllerConfig() has 596 non-comment lines`)
