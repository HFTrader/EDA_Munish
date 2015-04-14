-- modify the labC application to avoid missing the frame; rather process that frame on other core

-- try out these configurations
-- -- both cores write processed frames to seperate memory regions and HDMI displays one of this memory region (make it switchable depending on user input)
-- -- same as above but HDMI alternately displays both regions
-- -- both cores write processed frames to same memory regions ensuring that HDMI displays the initial core's frame correctly before displaying another core's
      frame (the one overwriting the previous frame from the other core)
