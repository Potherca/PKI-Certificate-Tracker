# General development notes

The PKI-CT consists of two parts, the tools and the web UI.
The current idea is to develop the tools first as these will take up the bulk of the effort, to optionally create PHP API wrappers for these tools and to then create a web-based UI to approach these tools.

## Tools

    - What should the various tools be able to do?
        * When given a single IP address, network range or a list of fully qualified domain names it should be able to find all certificates certificates under the default port (443) or under a user defined port (or list of ports).
    - Are such tools already available (for Debian)?
    - If not, which parts need to be build?
    - Which of these tools need to be wrapped in an PHP API? 
      (either for a deamon or to approach them from them web UI)
    
## UI
    - What should the UI be able to do?
    - How should the UI look?
    - How should the UI be secured?

## Requirements / Dependencies

To function the tools have the dependencies listed below.
At some point there should be an (at the very least initial) check to see if all dependencies have been met.

    - openssl
