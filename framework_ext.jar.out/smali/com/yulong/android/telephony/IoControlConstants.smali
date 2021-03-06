.class public Lcom/yulong/android/telephony/IoControlConstants;
.super Ljava/lang/Object;
.source "IoControlConstants.java"


# static fields
.field public static final IOCTRL_CANCEL_ALL:Ljava/lang/String; = "cancel_all_yesorno"

.field public static final IOCTRL_CANCEL_ALLMISSED_CALL:I = 0xb

.field public static final IOCTRL_CANCEL_CCFC_NUMBER:I = 0xf

.field public static final IOCTRL_CPLUSW_REQUEST_AUTHALGS:I = 0x65

.field public static final IOCTRL_CPLUSW_REQUEST_CARDTYPE:I = 0x68

.field public static final IOCTRL_CPLUSW_REQUEST_CAVE:I = 0x66

.field public static final IOCTRL_CPLUSW_REQUEST_GETGENERATEKEY:I = 0x6a

.field public static final IOCTRL_CPLUSW_REQUEST_IMSI:I = 0x64

.field public static final IOCTRL_CPLUSW_REQUEST_MAKEMD5:I = 0x67

.field public static final IOCTRL_CPLUSW_REQUEST_SSDCONFIRM:I = 0x6b

.field public static final IOCTRL_CPLUSW_REQUEST_SSDUPDATE:I = 0x6c

.field public static final IOCTRL_CPLUSW_REQUEST_UIMID:I = 0x69

.field public static final IOCTRL_GET_MBBMS_CELL_ID:I = 0x11

.field public static final IOCTRL_GET_MODEM_VERSION:I = 0x85

.field public static final IOCTRL_GET_NETWORK:I = 0x19

.field public static final IOCTRL_GET_NETWORK_KEY:Ljava/lang/String; = "getnetwork"

.field public static final IOCTRL_GET_SMS_BEARER_TYPE:I = 0x83

.field public static final IOCTRL_GET_UICC_CARDTYPE:I = 0x12

.field public static final IOCTRL_GPS_OPERATION:I = 0x13

.field public static final IOCTRL_GUARD_ICC_LOCK:I = 0xd

.field public static final IOCTRL_MBBMS_KEY_AUTN:Ljava/lang/String; = "mbbms-autn"

.field public static final IOCTRL_MBBMS_KEY_CELLID:Ljava/lang/String; = "mbbms-cellid"

.field public static final IOCTRL_MBBMS_KEY_CK:Ljava/lang/String; = "mbbms-ck"

.field public static final IOCTRL_MBBMS_KEY_IK:Ljava/lang/String; = "mbbms-ik"

.field public static final IOCTRL_MBBMS_KEY_RAND:Ljava/lang/String; = "mbbms-rand"

.field public static final IOCTRL_MBBMS_KEY_SRES:Ljava/lang/String; = "mbbms-sres"

.field public static final IOCTRL_MBBMS_KEY_STAT:Ljava/lang/String; = "mbbms-status"

.field public static final IOCTRL_MODEM_SET_CTA:I = 0xc

.field public static final IOCTRL_MODEM_SET_CTA_KEY:Ljava/lang/String; = "set_delay_time"

.field public static final IOCTRL_QUEREY_POWERCONTROL:I = 0x9

.field public static final IOCTRL_QUEREY_POWERCONTROL_KEY_STATE:Ljava/lang/String; = "power-state"

.field public static final IOCTRL_QUREY_ICC_STATE:I = 0x1

.field public static final IOCTRL_QUREY_ICC_STATE_KEY_ICCID:Ljava/lang/String; = "icc-id"

.field public static final IOCTRL_QUREY_ICC_STATE_KEY_ICCSTATE:Ljava/lang/String; = "icc-state"

.field public static final IOCTRL_SEND_ATCOMMAND:I = 0x14

.field public static final IOCTRL_SEND_ATCOMMAND_KEY:Ljava/lang/String; = "send_atcommand"

.field public static final IOCTRL_SET_CCFC_NUMBER:I = 0xe

.field public static final IOCTRL_SET_CCFC_NUMBER_KEY:Ljava/lang/String; = "ccfc_number"

.field public static final IOCTRL_SET_GPS_POWER_KEY:Ljava/lang/String; = "gps_power"

.field public static final IOCTRL_SET_MBBMS_AUTHENTICATE:I = 0x10

.field public static final IOCTRL_SET_NETWORK:I = 0x18

.field public static final IOCTRL_SET_NETWORK_KEY:Ljava/lang/String; = "network"

.field public static final IOCTRL_SET_PDPACTIVATE:I = 0x15

.field public static final IOCTRL_SET_PDPACTIVATE_KEY:Ljava/lang/String; = "pdp_state"

.field public static final IOCTRL_SET_PDPCLASS_KEY:Ljava/lang/String; = "traffic_class"

.field public static final IOCTRL_SET_PSATTACH:I = 0x16

.field public static final IOCTRL_SET_PSATTACH_KEY:Ljava/lang/String; = "ps_state"

.field public static final IOCTRL_SET_SMS_BEARER_TYPE:I = 0x84

.field public static final IOCTRL_SET_SMS_UNREADSTATE:I = 0x8

.field public static final IOCTRL_SHOW_ALL:Ljava/lang/String; = "show_all_yesorno"

.field public static final IOCTRL_SHOW_ALLMISSED_CALL:I = 0xa

.field public static final IOCTRL_TEST_UARTCHANNEL:I = 0x7c

.field public static final IOCTRL_UICC_KEY_CARDTYPE:Ljava/lang/String; = "uicc_cardtype"

.field public static final IOCTRL_UPDATE_SIGNALSTENGTH:I = 0x1a

.field public static final IOCTRL_VP_ANSWER:I = 0x79

.field public static final IOCTRL_VP_CALL_NUMBER:Ljava/lang/String; = "vp_call_number"

.field public static final IOCTRL_VP_HANGUP:I = 0x7b

.field public static final IOCTRL_VP_MAKECALL:I = 0x78

.field public static final IOCTRL_VP_VOICE_ANSWER:I = 0x7a

.field public static final RIL_REQUEST_GET_2G_NCELL_INFO:I = 0x80

.field public static final RIL_REQUEST_GET_2G_SCELL_INFO:I = 0x7f

.field public static final RIL_REQUEST_GET_3G_NCELL_INFO:I = 0x82

.field public static final RIL_REQUEST_GET_3G_SCELL_INFO:I = 0x81

.field public static final RIL_REQUEST_START_MODEM_CELL_TEST:I = 0x7d

.field public static final RIL_REQUEST_STOP_MODEM_CELL_TEST:I = 0x7e


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
