.class public Lcom/android/bluetooth/opp/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String; = null

.field public static final ACCEPTABLE_SHARE_OUTBOUND_TYPES:[Ljava/lang/String; = null

.field public static final ACTION_BT_OPP_TRANSFER_DONE:Ljava/lang/String; = "android.btopp.intent.action.BT_OPP_TRANSFER_DONE"

.field public static final ACTION_BT_OPP_TRANSFER_PROGRESS:Ljava/lang/String; = "android.btopp.intent.action.BT_OPP_TRANSFER_PROGRESS"

.field public static final ACTION_COMPLETE_HIDE:Ljava/lang/String; = "android.btopp.intent.action.HIDE_COMPLETE"

.field public static final ACTION_COMPLETE_INBOUND:Ljava/lang/String; = "android.btopp.intent.action.HIDE_COMPLETE_INBOUND"

.field public static final ACTION_COMPLETE_OUTBOUND:Ljava/lang/String; = "android.btopp.intent.action.HIDE_COMPLETE_OUTBOUND"

.field public static final ACTION_HANDOVER_SEND:Ljava/lang/String; = "android.btopp.intent.action.HANDOVER_SEND"

.field public static final ACTION_HANDOVER_SEND_MULTIPLE:Ljava/lang/String; = "android.btopp.intent.action.HANDOVER_SEND_MULTIPLE"

.field public static final ACTION_HIDE:Ljava/lang/String; = "android.btopp.intent.action.HIDE"

.field public static final ACTION_INCOMING_FILE_CONFIRM:Ljava/lang/String; = "android.btopp.intent.action.CONFIRM"

.field public static final ACTION_LIST:Ljava/lang/String; = "android.btopp.intent.action.LIST"

.field public static final ACTION_OPEN:Ljava/lang/String; = "android.btopp.intent.action.OPEN"

.field public static final ACTION_OPEN_INBOUND_TRANSFER:Ljava/lang/String; = "android.btopp.intent.action.OPEN_INBOUND"

.field public static final ACTION_OPEN_OUTBOUND_TRANSFER:Ljava/lang/String; = "android.btopp.intent.action.OPEN_OUTBOUND"

.field public static final ACTION_OPEN_RECEIVED_FILES:Ljava/lang/String; = "android.btopp.intent.action.OPEN_RECEIVED_FILES"

.field public static final ACTION_RETRY:Ljava/lang/String; = "android.btopp.intent.action.RETRY"

.field public static final ACTION_STOP_HANDOVER:Ljava/lang/String; = "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

.field public static final ACTION_WHITELIST_DEVICE:Ljava/lang/String; = "android.btopp.intent.action.WHITELIST_DEVICE"

.field public static final BATCH_STATUS_FAILED:I = 0x3

.field public static final BATCH_STATUS_FINISHED:I = 0x2

.field public static final BATCH_STATUS_PENDING:I = 0x0

.field public static final BATCH_STATUS_RUNNING:I = 0x1

.field public static final BLUETOOTHOPP_NAME_PREFERENCE:Ljava/lang/String; = "btopp_names"

.field public static final BLUETOOTHOPP_OBEX_VARIANT_PREFERENCE:Ljava/lang/String; = "btopp_obex_variant"

.field public static final BT_VCF_TRANSFER_CONTINUE:I = 0x2

.field public static final BT_VCF_TRANSFER_FINISH:I = 0x3

.field public static final BT_VCF_TRANSFER_START:I = 0x1

.field public static final BT_VCF_TRANSFER_START_AND_FINISH:I = 0x0

.field public static final BT_VCF_TRANSFER_TYPE:Ljava/lang/String; = "send_package"

.field public static final DEBUG:Z = true

.field public static final DEFAULT_STORE_SUBDIR:Ljava/lang/String; = "/bluetooth"

.field public static final DEFAULT_STORE_SUBDIR_DOCUMENTS:Ljava/lang/String; = "/bluetooth/Documents"

.field public static final DEFAULT_STORE_SUBDIR_MOVIES:Ljava/lang/String; = "/bluetooth/Movies"

.field public static final DEFAULT_STORE_SUBDIR_MUSIC:Ljava/lang/String; = "/bluetooth/Music"

.field public static final DEFAULT_STORE_SUBDIR_OTHERS:Ljava/lang/String; = "/bluetooth/Others"

.field public static final DEFAULT_STORE_SUBDIR_PICTURES:Ljava/lang/String; = "/bluetooth/Pictures"

.field public static final DIRECTION_BLUETOOTH_INCOMING:I = 0x0

.field public static final DIRECTION_BLUETOOTH_OUTGOING:I = 0x1

.field public static final EXTRA_BT_OPP_ADDRESS:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_ADDRESS"

.field public static final EXTRA_BT_OPP_TRANSFER_DIRECTION:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_DIRECTION"

.field public static final EXTRA_BT_OPP_TRANSFER_ID:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_ID"

.field public static final EXTRA_BT_OPP_TRANSFER_MIMETYPE:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_MIMETYPE"

.field public static final EXTRA_BT_OPP_TRANSFER_PROGRESS:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_PROGRESS"

.field public static final EXTRA_BT_OPP_TRANSFER_STATUS:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_STATUS"

.field public static final EXTRA_BT_OPP_TRANSFER_URI:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_URI"

.field public static final EXTRA_CONNECTION_HANDOVER:Ljava/lang/String; = "com.android.intent.extra.CONNECTION_HANDOVER"

.field public static final EXTRA_SHOW_ALL_FILES:Ljava/lang/String; = "android.btopp.intent.extra.SHOW_ALL"

.field public static final HANDOVER_STATUS_PERMISSION:Ljava/lang/String; = "com.android.permission.HANDOVER_STATUS"

.field public static final HANDOVER_TRANSFER_STATUS_FAILURE:I = 0x1

.field public static final HANDOVER_TRANSFER_STATUS_SUCCESS:I = 0x0

.field public static final MAX_RECORDS_IN_DATABASE:I = 0x3e8

.field public static final MEDIA_SCANNED:Ljava/lang/String; = "scanned"

.field public static final MEDIA_SCANNED_NOT_SCANNED:I = 0x0

.field public static final MEDIA_SCANNED_SCANNED_FAILED:I = 0x2

.field public static final MEDIA_SCANNED_SCANNED_OK:I = 0x1

.field public static final TAG:Ljava/lang/String; = "BluetoothOpp"

.field public static final TCP_DEBUG_PORT:I = 0x1964

.field public static final THIS_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field public static final UNACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String; = null

.field public static final UNACCEPTABLE_SHARE_OUTBOUND_TYPES:[Ljava/lang/String; = null

.field public static final USE_EMULATOR_DEBUG:Z = false

.field public static final USE_TCP_DEBUG:Z = false

.field public static final USE_TCP_SIMPLE_SERVER:Z = false

.field public static final VERBOSE:Z = true

.field public static ZERO_LENGTH_FILE:Z

.field public static filename_SEQUENCE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 190
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "image/*"

    aput-object v1, v0, v3

    const-string v1, "text/x-vcard"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_OUTBOUND_TYPES:[Ljava/lang/String;

    .line 198
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "virus/*"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->UNACCEPTABLE_SHARE_OUTBOUND_TYPES:[Ljava/lang/String;

    .line 207
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image/*"

    aput-object v1, v0, v3

    const-string v1, "video/*"

    aput-object v1, v0, v4

    const-string v1, "audio/*"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "text/x-vcard"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text/plain"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "text/html"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "application/zip"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "application/vnd.ms-excel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "application/msword"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "application/vnd.ms-powerpoint"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "application/pdf"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    .line 225
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "text/x-vcalendar"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->UNACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    .line 273
    const-string v0, "-"

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->filename_SEQUENCE_SEPARATOR:Ljava/lang/String;

    .line 288
    sput-boolean v3, Lcom/android/bluetooth/opp/Constants;->ZERO_LENGTH_FILE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logHeader(Ljavax/btobex/HeaderSet;)V
    .locals 4
    .parameter "hs"

    .prologue
    .line 327
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dumping HeaderSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :try_start_0
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COUNT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc0

    invoke-virtual {p0, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NAME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LENGTH : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc3

    invoke-virtual {p0, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIME_ISO_8601 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x44

    invoke-virtual {p0, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIME_4_BYTE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc4

    invoke-virtual {p0, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DESCRIPTION : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TARGET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x46

    invoke-virtual {p0, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x47

    invoke-virtual {p0, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WHO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4a

    invoke-virtual {p0, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBJECT_CLASS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4f

    invoke-virtual {p0, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATION_PARAMETER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4c

    invoke-virtual {p0, v3}, Ljavax/btobex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothOpp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump HeaderSet error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 321
    const-string v1, "\\*"

    const-string v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 323
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 312
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 313
    .local v3, matchType:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    const/4 v4, 0x1

    .line 317
    .end local v3           #matchType:Ljava/lang/String;
    :goto_1
    return v4

    .line 312
    .restart local v3       #matchType:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v3           #matchType:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static sendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 3
    .parameter "context"
    .parameter "contentUri"
    .parameter "status"

    .prologue
    .line 303
    invoke-static {p2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.TRANSFER_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.bluetooth"

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 309
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static updateShareStatus(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "status"

    .prologue
    const/4 v4, 0x0

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 292
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 293
    .local v1, updateValues:Landroid/content/ContentValues;
    const-string v2, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    invoke-static {p0, v0, p2}, Lcom/android/bluetooth/opp/Constants;->sendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 296
    return-void
.end method