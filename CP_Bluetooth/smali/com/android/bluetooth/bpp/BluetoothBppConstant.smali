.class public Lcom/android/bluetooth/bpp/BluetoothBppConstant;
.super Ljava/lang/Object;
.source "BluetoothBppConstant.java"


# static fields
.field public static final BTBPP_CHANNEL_PREFERENCE:Ljava/lang/String; = "btbpp_channels"

.field public static final BTBPP_NAME_PREFERENCE:Ljava/lang/String; = "btbpp_names"

.field public static final DEBUG:Z = true

.field public static final DPS_Target_UUID:[B = null

.field public static final DPS_UUID128:Landroid/os/ParcelUuid; = null

.field public static final DPS_UUID16:S = 0x1118s

.field public static final MIME_TYPE_Basic_Text:Ljava/lang/String; = "text/plain"

.field public static final MIME_TYPE_GIF89a:Ljava/lang/String; = "image/gif:89A"

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final MIME_TYPE_PCL3C:Ljava/lang/String; = "application/vnd.hp-PCL:3C"

.field public static final MIME_TYPE_PCL5E:Ljava/lang/String; = "application/vnd.hp-PCL:5E"

.field public static final MIME_TYPE_PDF:Ljava/lang/String; = "application/PDF"

.field public static final MIME_TYPE_PostScript2:Ljava/lang/String; = "application/PostScript:2"

.field public static final MIME_TYPE_PostScript3:Ljava/lang/String; = "application/PostScript:3"

.field public static final MIME_TYPE_REFOBJ:Ljava/lang/String; = "x-obex/referencedobject"

.field public static final MIME_TYPE_REF_LIST:Ljava/lang/String; = "text/x-ref-list"

.field public static final MIME_TYPE_REF_SIMPLE:Ljava/lang/String; = "text/x-ref-simple"

.field public static final MIME_TYPE_REF_XML:Ljava/lang/String; = "text/x-ref-xml"

.field public static final MIME_TYPE_RUI:Ljava/lang/String; = "x-obex/RUI"

.field public static final MIME_TYPE_SOAP:Ljava/lang/String; = "x-obex/bt-SOAP"

.field public static final MIME_TYPE_XHTML_Print0_95:Ljava/lang/String; = "application/vnd.pwg-xhtml-print+xml:0.95"

.field public static final MIME_TYPE_XHTML_Print1_0:Ljava/lang/String; = "application/vnd.pwg-xhtml-print+xml:1.0"

.field public static final MIME_TYPE_XHTML_Print_Inline_Img:Ljava/lang/String; = "application/vnd.pwg-multiplexed"

.field public static final MIME_TYPE_iCal2_0:Ljava/lang/String; = "text/calendar:2.0"

.field public static final MIME_TYPE_vCal1_0:Ljava/lang/String; = "text/x-vcalendar:1.0"

.field public static final MIME_TYPE_vCard2_1:Ljava/lang/String; = "text/x-vcard:2.1"

.field public static final MIME_TYPE_vCard3_0:Ljava/lang/String; = "text/x-vcard:3.0"

.field public static final MIME_TYPE_vMsg1_1:Ljava/lang/String; = "text/x-vmessage:1.1"

.field public static final OBEX_HDR_APP_PARAM_COUNT:I = 0x2

.field public static final OBEX_HDR_APP_PARAM_FILESIZE:I = 0x4

.field public static final OBEX_HDR_APP_PARAM_JOBID:I = 0x3

.field public static final OBEX_HDR_APP_PARAM_OFFSET:I = 0x1

.field public static final PBR_Target_UUID:[B = null

.field public static final PBR_UUID128:Landroid/os/ParcelUuid; = null

.field public static final PBR_UUID16:S = 0x1119s

.field public static final RUI_Target_UUID:[B = null

.field public static final RUI_UUID128:Landroid/os/ParcelUuid; = null

.field public static final RUI_UUID16:S = 0x1121s

.field public static final STATUS_BAD_REQUEST:I = 0x190

.field public static final STATUS_CANCELED:I = 0x1ea

.field public static final STATUS_CONNECTION_ERROR:I = 0x1f1

.field public static final STATUS_ERROR_NO_SDCARD:I = 0x1ed

.field public static final STATUS_ERROR_SDCARD_FULL:I = 0x1ee

.field public static final STATUS_FILE_ERROR:I = 0x1ec

.field public static final STATUS_FORBIDDEN:I = 0x193

.field public static final STATUS_LENGTH_REQUIRED:I = 0x19b

.field public static final STATUS_NOT_ACCEPTABLE:I = 0x196

.field public static final STATUS_OBEX_DATA_ERROR:I = 0x1f0

.field public static final STATUS_PENDING:I = 0xbe

.field public static final STATUS_PRECONDITION_FAILED:I = 0x19c

.field public static final STATUS_RUNNING:I = 0xc0

.field public static final STATUS_SUCCESS:I = 0xc8

.field public static final STATUS_UNHANDLED_OBEX_CODE:I = 0x1ef

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1eb

.field public static final STS_Target_UUID:[B = null

.field public static final STS_UUID128:Landroid/os/ParcelUuid; = null

.field public static final STS_UUID16:S = 0x1123s

.field public static final VERBOSE:Z = true

.field public static mSupportedDocs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->mSupportedDocs:Ljava/lang/String;

    .line 79
    const-string v0, "00001118-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->DPS_UUID128:Landroid/os/ParcelUuid;

    .line 83
    const-string v0, "00001119-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->PBR_UUID128:Landroid/os/ParcelUuid;

    .line 87
    const-string v0, "00001121-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->RUI_UUID128:Landroid/os/ParcelUuid;

    .line 91
    const-string v0, "00001123-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->STS_UUID128:Landroid/os/ParcelUuid;

    .line 95
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->DPS_Target_UUID:[B

    .line 102
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->PBR_Target_UUID:[B

    .line 109
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->RUI_Target_UUID:[B

    .line 116
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/bluetooth/bpp/BluetoothBppConstant;->STS_Target_UUID:[B

    return-void

    .line 95
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x11t
        0x18t
        0x0t
        0x0t
        0x10t
        0x0t
        0x80t
        0x0t
        0x0t
        0x80t
        0x5ft
        0x9bt
        0x34t
        0xfbt
    .end array-data

    .line 102
    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x11t
        0x19t
        0x0t
        0x0t
        0x10t
        0x0t
        0x80t
        0x0t
        0x0t
        0x80t
        0x5ft
        0x9bt
        0x34t
        0xfbt
    .end array-data

    .line 109
    :array_2
    .array-data 0x1
        0x0t
        0x0t
        0x11t
        0x21t
        0x0t
        0x0t
        0x10t
        0x0t
        0x80t
        0x0t
        0x0t
        0x80t
        0x5ft
        0x9bt
        0x34t
        0xfbt
    .end array-data

    .line 116
    :array_3
    .array-data 0x1
        0x0t
        0x0t
        0x11t
        0x23t
        0x0t
        0x0t
        0x10t
        0x0t
        0x80t
        0x0t
        0x0t
        0x80t
        0x5ft
        0x9bt
        0x34t
        0xfbt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
