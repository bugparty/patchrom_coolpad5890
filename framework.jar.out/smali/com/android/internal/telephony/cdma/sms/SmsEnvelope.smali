.class public final Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
.super Ljava/lang/Object;
.source "SmsEnvelope.java"


# static fields
.field public static final MESSAGE_TYPE_ACKNOWLEDGE:I = 0x2

.field public static final MESSAGE_TYPE_BROADCAST:I = 0x1

.field public static final MESSAGE_TYPE_POINT_TO_POINT:I = 0x0

.field public static final PARAM_BC_SRV_CATEGORY:I = 0x1

.field public static final PARAM_BEARER_DATA:I = 0x8

.field public static final PARAM_BEARER_REPLY_OPTION:I = 0x6

.field public static final PARAM_CAUSE_CODES:I = 0x7

.field public static final PARAM_DEST_ADDRESS:I = 0x4

.field public static final PARAM_DEST_SUBADDRESS:I = 0x5

.field public static final PARAM_ORIG_ADDRESS:I = 0x2

.field public static final PARAM_ORIG_SUBADDRESS:I = 0x3

.field public static final PARAM_TELESERVICE_ID:I = 0x0

.field public static final SERVICE_CATEGORY_CMAS_CHILD_ABDUCTION_EMERGENCY:I = 0x1003

.field public static final SERVICE_CATEGORY_CMAS_EXTREME_THREAT:I = 0x1001

.field public static final SERVICE_CATEGORY_CMAS_LAST_RESERVED_VALUE:I = 0x10ff

.field public static final SERVICE_CATEGORY_CMAS_PRESIDENTIAL_LEVEL_ALERT:I = 0x1000

.field public static final SERVICE_CATEGORY_CMAS_SEVERE_THREAT:I = 0x1002

.field public static final SERVICE_CATEGORY_CMAS_TEST_MESSAGE:I = 0x1004

.field public static final SMS_BEARER_DATA_MAX:I = 0xff

.field public static final TELESERVICE_CDMA_DM_RESPONSE:I = 0xfded

.field public static final TELESERVICE_CT_DM:I = 0xfdf1

.field public static final TELESERVICE_CT_WAP:I = 0xfdea

.field public static final TELESERVICE_MWI:I = 0x40000

.field public static final TELESERVICE_NOT_SET:I = 0x0

.field public static final TELESERVICE_SCPT:I = 0x1006

.field public static final TELESERVICE_VMN:I = 0x1003

.field public static final TELESERVICE_WAP:I = 0x1004

.field public static final TELESERVICE_WEMT:I = 0x1005

.field public static final TELESERVICE_WMT:I = 0x1002


# instance fields
.field public bearerData:[B

.field public bearerReply:I

.field public causeCode:B

.field public destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public errorClass:B

.field public messageType:I

.field public origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

.field public replySeqNo:B

.field public serviceCategory:I

.field public teleService:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 149
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 151
    return-void
.end method
