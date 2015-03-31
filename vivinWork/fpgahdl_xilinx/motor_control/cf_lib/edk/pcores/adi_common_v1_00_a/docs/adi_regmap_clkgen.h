/* Register Map Definitions */
/* Mon Jul 22 13:34:11 2013 */


/* Clock Generator */

#define REG_RSTN                       0x0010                    /*Interface Control & Status */
#define RSTN                           (1 << 0)                  /* RW, Reset, a common reset is used for all the
                                                                 interface modules, The default is reset (0x0),
                                                                 software must write 0x1 to bring up the core. */
#define REG_STATUS                     0x0017                    /*ADC Interface Control & Status */
#define STATUS                         (1 << 0)                  /* RO, Interface status, if set indicates no errors.
                                                                 If not set, there are errors, software may try
                                                                 resetting the cores. */
#define REG_DRP_CNTRL                  0x001c                    /*ADC Interface Control & Status */
#define DRP_SEL                        (1 << 29)                 /* RW, DRP select, a 0x0 to 0x1 transition initiates
                                                                 the DRP access controlled by the registers below.
                                                                 (does not include GTX lanes). */
#define DRP_RWN                        (1 << 28)                 /* RW, DRP read (0x1) or write (0x0) select (does
                                                                 not include GTX lanes). */
#define DRP_ADDRESS(x)                 (((x) & 0xfff) << 16)     /* RW, DRP address, designs that contain more than
                                                                 one DRP accessible primitives have selects based
                                                                 on the most significant bits (does not include
                                                                 GTX lanes). */
#define DRP_WDATA(x)                   (((x) & 0xffff) << 0)     /* RW, DRP write data (does not include GTX lanes). */
#define REG_DRP_STATUS                 0x001d                    /*ADC Interface Control & Status */
#define DRP_STATUS                     (1 << 16)                 /* RO, If set indicates busy (access pending). The
                                                                 read data may not be valid if this bit is set
                                                                 (does not include GTX lanes). */
#define DRP_RDATA(x)                   (((x) & 0xffff) << 0)     /* RO, DRP read data (does not include GTX lanes). */

