.class public Lcom/quicinc/fmradio/FMRadioService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FMService"

.field public static final STOP_SERVICE:I = 0x0

.field public static final aO:I = 0x0

.field public static final aP:I = 0x1

.field private static final aQ:I = 0x65

.field private static final aR:Ljava/lang/String; = "/dev/radio0"

.field private static final bB:I = 0x1

.field private static final bC:I = 0x2

.field private static final bD:I = 0x3

.field private static final bE:I = 0x4

.field private static final bF:I = 0x5

.field public static final bH:I = 0x1

.field public static final bM:J = -0x1L

.field public static final bN:J = -0x2L

.field public static final bO:J = -0x3L

.field public static final bP:J = 0x2faf080L

.field public static final bR:Ljava/lang/String; = "com.quicinc.fmradio.exit"

.field private static final bS:Ljava/lang/String; = "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

.field private static bb:Lcom/quicinc/fmradio/ai; = null

.field private static bh:Z = false

.field private static bi:Z = false

.field private static bj:Ljava/lang/String; = null

.field private static final bt:I = 0xea60


# instance fields
.field private aS:Landroid/hardware/fmradio/FmReceiver;

.field private aT:Landroid/content/BroadcastReceiver;

.field private aU:Landroid/content/BroadcastReceiver;

.field private aV:Landroid/content/BroadcastReceiver;

.field private aW:Landroid/content/BroadcastReceiver;

.field private aX:Landroid/content/BroadcastReceiver;

.field private aY:Z

.field private aZ:Landroid/content/BroadcastReceiver;

.field private bA:Z

.field private bG:Z

.field bI:Lcom/quicinc/utils/e;

.field private bJ:Z

.field private bK:Z

.field private bL:Z

.field private bQ:J

.field private bT:[Landroid/telephony/PhoneStateListener;

.field bU:I

.field bV:Ljava/lang/String;

.field final bW:Ljava/lang/Runnable;

.field final bX:Ljava/lang/Runnable;

.field private bY:Landroid/os/Handler;

.field final bZ:Ljava/lang/Runnable;

.field private ba:Lcom/quicinc/fmradio/bg;

.field private bc:Z

.field private bd:Z

.field private be:I

.field private bf:Z

.field private bk:Z

.field private bl:Z

.field private bm:Z

.field private bn:I

.field private bo:Landroid/content/BroadcastReceiver;

.field private bp:Z

.field private bq:Z

.field private br:Z

.field private bs:Landroid/hardware/fmradio/FmRxRdsData;

.field private bu:Ljava/io/File;

.field private bv:Z

.field private bw:Z

.field private bx:Ljava/io/File;

.field by:J

.field private bz:Z

.field final ca:Ljava/lang/Runnable;

.field private final cb:Landroid/os/IBinder;

.field cc:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;

.field private cd:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field final mHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    sput-boolean v0, Lcom/quicinc/fmradio/FMRadioService;->bh:Z

    .line 113
    sput-boolean v0, Lcom/quicinc/fmradio/FMRadioService;->bi:Z

    .line 114
    const-string v0, "headset"

    sput-object v0, Lcom/quicinc/fmradio/FMRadioService;->bj:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 168
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 97
    iput-object v3, p0, Lcom/quicinc/fmradio/FMRadioService;->aT:Landroid/content/BroadcastReceiver;

    .line 98
    iput-object v3, p0, Lcom/quicinc/fmradio/FMRadioService;->aU:Landroid/content/BroadcastReceiver;

    .line 99
    iput-object v3, p0, Lcom/quicinc/fmradio/FMRadioService;->aV:Landroid/content/BroadcastReceiver;

    .line 100
    iput-object v3, p0, Lcom/quicinc/fmradio/FMRadioService;->aW:Landroid/content/BroadcastReceiver;

    .line 102
    iput-object v3, p0, Lcom/quicinc/fmradio/FMRadioService;->aX:Landroid/content/BroadcastReceiver;

    .line 103
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->aY:Z

    .line 107
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bc:Z

    .line 108
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bd:Z

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/fmradio/FMRadioService;->be:I

    .line 111
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bf:Z

    .line 117
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bk:Z

    .line 118
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bl:Z

    .line 119
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bm:Z

    .line 120
    iput v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bn:I

    .line 121
    iput-object v3, p0, Lcom/quicinc/fmradio/FMRadioService;->bo:Landroid/content/BroadcastReceiver;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->mHandler:Landroid/os/Handler;

    .line 123
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bp:Z

    .line 124
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bq:Z

    .line 125
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->br:Z

    .line 128
    iput-object v3, p0, Lcom/quicinc/fmradio/FMRadioService;->bs:Landroid/hardware/fmradio/FmRxRdsData;

    .line 131
    iput-object v3, p0, Lcom/quicinc/fmradio/FMRadioService;->bu:Ljava/io/File;

    .line 133
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bv:Z

    .line 134
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bw:Z

    .line 135
    iput-object v3, p0, Lcom/quicinc/fmradio/FMRadioService;->bx:Ljava/io/File;

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/quicinc/fmradio/FMRadioService;->by:J

    .line 138
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bz:Z

    .line 140
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bA:Z

    .line 148
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bG:Z

    .line 152
    iput-object v3, p0, Lcom/quicinc/fmradio/FMRadioService;->bI:Lcom/quicinc/utils/e;

    .line 153
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bJ:Z

    .line 155
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bK:Z

    .line 156
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bL:Z

    .line 170
    const/16 v0, 0xa

    iput v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bU:I

    .line 171
    const-string v0, "android.intent.action.FM"

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bV:Ljava/lang/String;

    .line 358
    new-instance v0, Lcom/quicinc/fmradio/ct;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/ct;-><init>(Lcom/quicinc/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bW:Ljava/lang/Runnable;

    .line 591
    new-instance v0, Lcom/quicinc/fmradio/cx;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/cx;-><init>(Lcom/quicinc/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bX:Ljava/lang/Runnable;

    .line 1254
    new-instance v0, Lcom/quicinc/fmradio/cf;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/cf;-><init>(Lcom/quicinc/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bY:Landroid/os/Handler;

    .line 1361
    new-instance v0, Lcom/quicinc/fmradio/cd;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/cd;-><init>(Lcom/quicinc/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bZ:Ljava/lang/Runnable;

    .line 1370
    new-instance v0, Lcom/quicinc/fmradio/cc;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/cc;-><init>(Lcom/quicinc/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->ca:Ljava/lang/Runnable;

    .line 1697
    new-instance v0, Lcom/quicinc/fmradio/df;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/df;-><init>(Lcom/quicinc/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->cb:Landroid/os/IBinder;

    .line 2610
    new-instance v0, Lcom/quicinc/fmradio/cb;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/cb;-><init>(Lcom/quicinc/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->cc:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;

    .line 2928
    new-instance v0, Lcom/quicinc/fmradio/ca;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/ca;-><init>(Lcom/quicinc/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->cd:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 169
    return-void
.end method

.method private a(Landroid/content/res/Resources;)I
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1087
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1088
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    .line 1089
    const-string v0, "name=?"

    .line 1090
    new-array v4, v3, [Ljava/lang/String;

    const v0, 0x7f060091

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 1091
    const-string v3, "name=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/quicinc/fmradio/FMRadioService;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1092
    if-nez v1, :cond_0

    .line 1093
    const-string v0, "FMService"

    const-string v2, "query returns null"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_0
    const/4 v0, -0x1

    .line 1096
    if-eqz v1, :cond_2

    .line 1097
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1098
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1099
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1101
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1103
    :cond_2
    return v0
.end method

.method static synthetic a(Lcom/quicinc/fmradio/FMRadioService;Landroid/hardware/fmradio/FmReceiver;)Landroid/hardware/fmradio/FmReceiver;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/quicinc/fmradio/FMRadioService;Landroid/hardware/fmradio/FmRxRdsData;)Landroid/hardware/fmradio/FmRxRdsData;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/quicinc/fmradio/FMRadioService;->bs:Landroid/hardware/fmradio/FmRxRdsData;

    return-object p1
.end method

.method private a(Landroid/content/res/Resources;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1119
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1120
    const-string v1, "name"

    const v2, 0x7f060091

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1122
    if-nez v0, :cond_0

    .line 1123
    const-string v1, "Unable to save recorded audio"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1125
    :cond_0
    return-object v0
.end method

.method private a(Ljava/io/File;)Landroid/net/Uri;
    .locals 11
    .parameter

    .prologue
    const-wide/16 v9, 0x3e8

    .line 1042
    const-string v0, "FMService"

    const-string v1, "In addToMediaDB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1044
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1045
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1046
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 1047
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1048
    new-instance v7, Ljava/text/SimpleDateFormat;

    const v8, 0x7f06008e

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1054
    const-string v7, "is_music"

    const-string v8, "1"

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string v7, "title"

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v6, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const-string v6, "date_added"

    div-long/2addr v2, v9

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1059
    const-string v2, "date_modified"

    div-long v3, v4, v9

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1060
    const-string v2, "mime_type"

    const-string v3, "AUDIO_AAC_MP4"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const-string v2, "artist"

    const v3, 0x7f06008f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v2, "album"

    const v3, 0x7f060090

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string v2, "FMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inserting audio record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1067
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1068
    const-string v4, "FMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContentURI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1070
    if-nez v0, :cond_0

    .line 1071
    const-string v0, "Unable to save recorded audio"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1072
    const/4 v0, 0x0

    .line 1083
    :goto_0
    return-object v0

    .line 1074
    :cond_0
    invoke-direct {p0, v1}, Lcom/quicinc/fmradio/FMRadioService;->a(Landroid/content/res/Resources;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1075
    invoke-direct {p0, v1, v2}, Lcom/quicinc/fmradio/FMRadioService;->a(Landroid/content/res/Resources;Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 1077
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1078
    invoke-direct {p0, v1}, Lcom/quicinc/fmradio/FMRadioService;->a(Landroid/content/res/Resources;)I

    move-result v1

    int-to-long v4, v1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/quicinc/fmradio/FMRadioService;->a(Landroid/content/ContentResolver;IJ)V

    .line 1082
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/quicinc/fmradio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(JI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2909
    if-nez p3, :cond_0

    const/4 v0, 0x3

    .line 2910
    :goto_0
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bY:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2911
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bY:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2912
    return-void

    .line 2909
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private a(Landroid/content/ContentResolver;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1129
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v6

    .line 1132
    const-string v0, "external"

    invoke-static {v0, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 1133
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1135
    if-eqz v2, :cond_0

    .line 1136
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1137
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1138
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1143
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1144
    const-string v3, "play_order"

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1145
    const-string v0, "audio_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1146
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1147
    return-void

    :cond_0
    move v0, v6

    .line 1141
    goto :goto_0
.end method

.method static synthetic a(Lcom/quicinc/fmradio/FMRadioService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/quicinc/fmradio/FMRadioService;->u(I)V

    return-void
.end method

.method static synthetic a(Lcom/quicinc/fmradio/FMRadioService;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/quicinc/fmradio/FMRadioService;->a(JI)V

    return-void
.end method

.method static synthetic a(Lcom/quicinc/fmradio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bl:Z

    return v0
.end method

.method static synthetic a(Lcom/quicinc/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/quicinc/fmradio/FMRadioService;->bc:Z

    return p1
.end method

.method private aA()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1832
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bm:Z

    if-eqz v0, :cond_0

    .line 1834
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bm:Z

    .line 1835
    const/4 v0, 0x1

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1837
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1839
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->p()V

    .line 1841
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1842
    if-eqz v0, :cond_2

    .line 1844
    const-string v0, "FMService"

    const-string v1, "audioManager.setFmRadioOn = false \n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->n()Z

    .line 1846
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->aq()V

    .line 1848
    const-string v0, "FMService"

    const-string v1, "audioManager.setFmRadioOn false done \n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1852
    const-string v0, "hw.fm.isAnalog"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bq:Z

    .line 1855
    :cond_3
    return-void
.end method

.method private aB()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1861
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bm:Z

    if-eqz v0, :cond_0

    .line 1863
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bm:Z

    .line 1864
    const/4 v0, 0x1

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1867
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1869
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->av()V

    .line 1872
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1873
    if-eqz v0, :cond_2

    .line 1875
    const-string v0, "FMService"

    const-string v1, "audioManager.setFmRadioOn = false \n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->n()Z

    .line 1877
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->ar()V

    .line 1879
    const-string v0, "FMService"

    const-string v1, "audioManager.setFmRadioOn false done \n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1883
    const-string v0, "hw.fm.isAnalog"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bq:Z

    .line 1886
    :cond_3
    return-void
.end method

.method public static aE()J
    .locals 4

    .prologue
    .line 2533
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 2534
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External storage state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    const-string v1, "checking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2536
    const-wide/16 v0, -0x2

    .line 2549
    :goto_0
    return-wide v0

    .line 2538
    :cond_0
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2539
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2543
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2544
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2545
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    goto :goto_0

    .line 2546
    :catch_0
    move-exception v0

    .line 2547
    const-string v1, "FMService"

    const-string v2, "Fail to access external storage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2549
    const-wide/16 v0, -0x3

    goto :goto_0
.end method

.method private aF()Z
    .locals 2

    .prologue
    .line 2553
    invoke-static {}, Lcom/quicinc/fmradio/FMRadioService;->aE()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bQ:J

    .line 2554
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->aG()Z

    move-result v0

    return v0
.end method

.method private aG()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 2558
    const/4 v1, 0x0

    .line 2559
    iget-wide v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bQ:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 2569
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 2570
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2572
    const/4 v0, 0x0

    .line 2574
    :cond_1
    return v0

    .line 2561
    :cond_2
    iget-wide v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bQ:J

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2563
    iget-wide v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bQ:J

    const-wide/16 v4, -0x3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2565
    iget-wide v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bQ:J

    const-wide/32 v4, 0x2faf080

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0
.end method

.method private aI()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2885
    invoke-static {}, Lcom/quicinc/fmradio/ai;->getTunedFrequency()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    .line 2886
    const v2, 0x7f060050

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/quicinc/fmradio/FMRadioService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2887
    return-object v0
.end method

.method static synthetic aJ()Lcom/quicinc/fmradio/ai;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/quicinc/fmradio/FMRadioService;->bb:Lcom/quicinc/fmradio/ai;

    return-object v0
.end method

.method private ap()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 698
    const-string v0, "FMService"

    const-string v1, "In startFM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bK:Z

    if-ne v4, v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    sput-boolean v4, Lcom/quicinc/fmradio/FMRadioService;->bi:Z

    goto :goto_0

    .line 707
    :cond_2
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bv:Z

    if-eq v4, v0, :cond_0

    .line 709
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 710
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->cd:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bU:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 712
    const-string v0, "FMService"

    const-string v1, "FM registering for registerMediaButtonEventReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 714
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/quicinc/fmradio/FMMediaButtonIntentReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bw:Z

    .line 719
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bJ:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bI:Lcom/quicinc/utils/e;

    invoke-virtual {v0}, Lcom/quicinc/utils/e;->ck()Z

    move-result v0

    if-ne v4, v0, :cond_3

    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->j()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->h()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->as()Z

    move-result v0

    if-ne v4, v0, :cond_3

    .line 722
    iput-boolean v4, p0, Lcom/quicinc/fmradio/FMRadioService;->aY:Z

    .line 736
    :goto_1
    iput-boolean v4, p0, Lcom/quicinc/fmradio/FMRadioService;->bv:Z

    goto :goto_0

    .line 724
    :cond_3
    const-string v0, "FMService"

    const-string v1, "FMRadio: sending the intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 729
    iput-boolean v4, p0, Lcom/quicinc/fmradio/FMRadioService;->bm:Z

    .line 730
    invoke-static {v4, v4}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 732
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bV:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    const-string v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 734
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private aq()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 740
    const-string v0, "FMService"

    const-string v1, "In stopFM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aY:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 742
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->aY:Z

    .line 743
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->at()V

    .line 750
    :goto_0
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bv:Z

    .line 751
    return-void

    .line 745
    :cond_0
    const-string v0, "FMService"

    const-string v1, "FMRadio: sending the intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bV:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 747
    const-string v1, "state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 748
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private ar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 754
    const-string v0, "FMService"

    const-string v1, "resetFM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aY:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 756
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->aY:Z

    .line 757
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->au()V

    .line 764
    :goto_0
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bv:Z

    .line 765
    return-void

    .line 759
    :cond_0
    const-string v0, "FMService"

    const-string v1, "FMRadio: sending the intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bV:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 761
    const-string v1, "state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 762
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private au()V
    .locals 4

    .prologue
    .line 931
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bu:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 934
    :try_start_0
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bu:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    :cond_0
    :goto_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 945
    const-string v1, "com.android.server.CpuGovernorService.voteType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 946
    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 956
    :goto_1
    return-void

    .line 935
    :catch_0
    move-exception v0

    .line 936
    const-string v0, "FMService"

    const-string v1, "Not able to delete file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 953
    :catch_1
    move-exception v0

    .line 954
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop failed with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private av()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 961
    const-string v0, "FMService"

    const-string v1, "resetRecording()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iput-boolean v4, p0, Lcom/quicinc/fmradio/FMRadioService;->bl:Z

    .line 970
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 972
    const-string v1, "com.android.server.CpuGovernorService.voteType"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 973
    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 980
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/quicinc/fmradio/FMRadioService;->by:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 981
    if-nez v0, :cond_0

    .line 993
    :goto_0
    return-void

    .line 983
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 984
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storage state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 987
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bx:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->a(Ljava/io/File;)Landroid/net/Uri;

    goto :goto_0

    .line 990
    :cond_1
    const-string v0, "FMService"

    const-string v1, "SD card must have removed during recording. "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const-string v0, "Recording aborted"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private ay()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1415
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bY:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1416
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bY:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1417
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1418
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bY:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1423
    invoke-virtual {p0, v4}, Lcom/quicinc/fmradio/FMRadioService;->stopForeground(Z)V

    .line 1424
    return-void
.end method

.method static synthetic b(Lcom/quicinc/fmradio/FMRadioService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/quicinc/fmradio/FMRadioService;->f(I)V

    return-void
.end method

.method static synthetic b(Lcom/quicinc/fmradio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/quicinc/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/quicinc/fmradio/FMRadioService;->bA:Z

    return p1
.end method

.method static synthetic c(Lcom/quicinc/fmradio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bc:Z

    return v0
.end method

.method static synthetic c(Lcom/quicinc/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/quicinc/fmradio/FMRadioService;->br:Z

    return p1
.end method

.method static synthetic d(Lcom/quicinc/fmradio/FMRadioService;)Landroid/hardware/fmradio/FmReceiver;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    return-object v0
.end method

.method private d()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1730
    .line 1731
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1736
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-nez v0, :cond_0

    .line 1739
    :try_start_0
    new-instance v0, Landroid/hardware/fmradio/FmReceiver;

    const-string v3, "/dev/radio0"

    iget-object v4, p0, Lcom/quicinc/fmradio/FMRadioService;->cc:Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;

    invoke-direct {v0, v3, v4}, Landroid/hardware/fmradio/FmReceiver;-><init>(Ljava/lang/String;Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    :cond_0
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v0, :cond_7

    .line 1749
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1753
    const-string v0, "FMService"

    const-string v3, "mReceiver.already enabled"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1774
    :goto_0
    if-ne v0, v1, :cond_6

    .line 1777
    invoke-virtual {p0, v2}, Lcom/quicinc/fmradio/FMRadioService;->c(Z)Z

    move-result v0

    .line 1778
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLowPowerMode done, Status :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1782
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bv:Z

    if-nez v0, :cond_1

    .line 1784
    const-string v0, "FMService"

    const-string v3, "mAudioManager.setFmRadioOn = true \n"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->getCallState()I

    move-result v0

    .line 1787
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->getCallState()I

    move-result v3

    if-eqz v3, :cond_5

    .line 1789
    invoke-direct {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->u(I)V

    .line 1793
    :goto_1
    const-string v0, "FMService"

    const-string v3, "mAudioManager.setFmRadioOn done \n"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    :cond_1
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v0, :cond_2

    .line 1796
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    const/16 v3, 0x17

    invoke-virtual {v0, v3}, Landroid/hardware/fmradio/FmReceiver;->registerRdsGroupProcessing(I)Z

    move-result v0

    .line 1800
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerRdsGroupProcessing done, Status :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    :cond_2
    invoke-static {}, Lcom/quicinc/fmradio/ai;->ae()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->d(Z)Z

    move-result v0

    .line 1803
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableAutoAF done, Status :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0, v2}, Landroid/hardware/fmradio/FmReceiver;->setInternalAntenna(Z)Z

    move-result v0

    .line 1807
    const-string v2, "FMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInternalAntenna done, Status :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->az()V

    .line 1812
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->ax()V

    .line 1813
    iput-boolean v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bk:Z

    move v0, v1

    .line 1825
    :goto_2
    return v0

    .line 1741
    :catch_0
    move-exception v0

    .line 1743
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FmReceiver service not available!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1758
    :cond_3
    invoke-static {}, Lcom/quicinc/fmradio/ai;->X()Landroid/hardware/fmradio/FmConfig;

    move-result-object v0

    .line 1759
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fmOn: RadioBand   :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmConfig;->getRadioBand()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fmOn: Emphasis    :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmConfig;->getEmphasis()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fmOn: ChSpacing   :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmConfig;->getChSpacing()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fmOn: RdsStd      :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmConfig;->getRdsStd()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fmOn: LowerLimit  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmConfig;->getLowerLimit()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fmOn: UpperLimit  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmConfig;->getUpperLimit()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-static {}, Lcom/quicinc/fmradio/ai;->X()Landroid/hardware/fmradio/FmConfig;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/fmradio/FmReceiver;->enable(Landroid/hardware/fmradio/FmConfig;)Z

    move-result v0

    .line 1766
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mReceiver.enable done, Status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->j()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1768
    invoke-direct {p0, v2}, Lcom/quicinc/fmradio/FMRadioService;->k(Z)Z

    goto/16 :goto_0

    .line 1770
    :cond_4
    invoke-direct {p0, v1}, Lcom/quicinc/fmradio/FMRadioService;->k(Z)Z

    goto/16 :goto_0

    .line 1791
    :cond_5
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->ap()V

    goto/16 :goto_1

    .line 1818
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    .line 1822
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->stop()V

    goto/16 :goto_2

    :cond_7
    move v0, v2

    goto/16 :goto_2
.end method

.method static synthetic d(Lcom/quicinc/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/quicinc/fmradio/FMRadioService;->bK:Z

    return p1
.end method

.method private e()Z
    .locals 3

    .prologue
    .line 1894
    const/4 v0, 0x0

    .line 1896
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->aA()V

    .line 1899
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1901
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmReceiver;->disable()Z

    move-result v0

    .line 1902
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    .line 1904
    :cond_0
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->stop()V

    .line 1905
    sget-boolean v1, Lcom/quicinc/fmradio/FMRadioService;->bi:Z

    if-nez v1, :cond_1

    .line 1906
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.quicinc.fmradio.exit"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1907
    invoke-virtual {p0, v1}, Lcom/quicinc/fmradio/FMRadioService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1909
    :cond_1
    return v0
.end method

.method static synthetic e(Lcom/quicinc/fmradio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bd:Z

    return v0
.end method

.method static synthetic e(Lcom/quicinc/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/quicinc/fmradio/FMRadioService;->bG:Z

    return p1
.end method

.method private f(I)V
    .locals 2
    .parameter

    .prologue
    .line 2914
    if-nez p1, :cond_0

    const/4 v0, 0x3

    .line 2915
    :goto_0
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bY:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2916
    return-void

    .line 2914
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private f()Z
    .locals 3

    .prologue
    .line 1918
    const/4 v0, 0x0

    .line 1920
    const-string v1, "FMService"

    const-string v2, "fmRadioReset"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->aB()V

    .line 1925
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1927
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmReceiver;->reset()Z

    move-result v0

    .line 1928
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    .line 1930
    :cond_0
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->stop()V

    .line 1931
    return v0
.end method

.method static synthetic f(Lcom/quicinc/fmradio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aY:Z

    return v0
.end method

.method static synthetic f(Lcom/quicinc/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/quicinc/fmradio/FMRadioService;->bm:Z

    return p1
.end method

.method static synthetic g(Lcom/quicinc/fmradio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->stop()V

    return-void
.end method

.method static synthetic g(Lcom/quicinc/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/quicinc/fmradio/FMRadioService;->bz:Z

    return p1
.end method

.method static synthetic h(Lcom/quicinc/fmradio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bw:Z

    return v0
.end method

.method static synthetic h(Lcom/quicinc/fmradio/FMRadioService;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/quicinc/fmradio/FMRadioService;->k(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/quicinc/fmradio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->aq()V

    return-void
.end method

.method static synthetic i(Lcom/quicinc/fmradio/FMRadioService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/quicinc/fmradio/FMRadioService;->bw:Z

    return p1
.end method

.method static synthetic j(Lcom/quicinc/fmradio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->ap()V

    return-void
.end method

.method static synthetic k(Lcom/quicinc/fmradio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bf:Z

    return v0
.end method

.method private k(Z)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1701
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-nez v1, :cond_1

    .line 1722
    :cond_0
    :goto_0
    return v0

    .line 1704
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->h()Z

    move-result v1

    if-ne v1, p1, :cond_2

    .line 1705
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Analog Path already is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1708
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->aC()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1709
    const-string v1, "FMService"

    const-string v2, "Analog Path is not supported "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1712
    :cond_3
    const-string v1, "hw.fm.digitalpath"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1716
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v1, p1}, Landroid/hardware/fmradio/FmReceiver;->setAnalogMode(Z)Z

    move-result v1

    .line 1717
    if-nez v1, :cond_4

    .line 1718
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in toggling analog/digital path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1721
    :cond_4
    iput-boolean p1, p0, Lcom/quicinc/fmradio/FMRadioService;->bq:Z

    .line 1722
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic l(Lcom/quicinc/fmradio/FMRadioService;)Lcom/quicinc/fmradio/bg;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->ba:Lcom/quicinc/fmradio/bg;

    return-object v0
.end method

.method static synthetic m(Lcom/quicinc/fmradio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic n(Lcom/quicinc/fmradio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->br:Z

    return v0
.end method

.method static synthetic o(Lcom/quicinc/fmradio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bA:Z

    return v0
.end method

.method static synthetic p(Lcom/quicinc/fmradio/FMRadioService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bY:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic q(Lcom/quicinc/fmradio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bG:Z

    return v0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1108
    :try_start_0
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1109
    if-nez v0, :cond_0

    move-object v0, v6

    .line 1114
    :goto_0
    return-object v0

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1112
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1113
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 1114
    goto :goto_0
.end method

.method static synthetic r(Lcom/quicinc/fmradio/FMRadioService;)I
    .locals 1
    .parameter

    .prologue
    .line 86
    iget v0, p0, Lcom/quicinc/fmradio/FMRadioService;->be:I

    return v0
.end method

.method static synthetic s(Lcom/quicinc/fmradio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bm:Z

    return v0
.end method

.method private stop()V
    .locals 3

    .prologue
    .line 1402
    const-string v0, "FMService"

    const-string v1, "in stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bf:Z

    if-nez v0, :cond_0

    .line 1404
    const-string v0, "FMService"

    const-string v1, "calling unregisterMediaButtonEventReceiver in stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    .line 1406
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/quicinc/fmradio/FMMediaButtonIntentReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1410
    :cond_0
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->ay()V

    .line 1411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bk:Z

    .line 1412
    return-void
.end method

.method static synthetic t(Lcom/quicinc/fmradio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bv:Z

    return v0
.end method

.method private u(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1151
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1152
    iput p1, p0, Lcom/quicinc/fmradio/FMRadioService;->bn:I

    .line 1154
    if-eq v1, p1, :cond_0

    if-ne v4, p1, :cond_5

    .line 1156
    :cond_0
    if-ne p1, v4, :cond_2

    .line 1157
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1158
    if-nez v0, :cond_2

    .line 1215
    :cond_1
    :goto_0
    return-void

    .line 1162
    :cond_2
    iget-boolean v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bm:Z

    .line 1163
    sget-boolean v2, Lcom/quicinc/fmradio/FMRadioService;->bh:Z

    .line 1164
    iget v3, p0, Lcom/quicinc/fmradio/FMRadioService;->bn:I

    .line 1165
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1166
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bf:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->ba:Lcom/quicinc/fmradio/bg;

    if-eqz v0, :cond_3

    .line 1168
    :try_start_0
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->ba:Lcom/quicinc/fmradio/bg;

    invoke-interface {v0}, Lcom/quicinc/fmradio/bg;->A()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :cond_3
    :goto_1
    sput-boolean v4, Lcom/quicinc/fmradio/FMRadioService;->bi:Z

    .line 1174
    iput-boolean v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bm:Z

    .line 1175
    iput v3, p0, Lcom/quicinc/fmradio/FMRadioService;->bn:I

    .line 1176
    sput-boolean v2, Lcom/quicinc/fmradio/FMRadioService;->bh:Z

    goto :goto_0

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1177
    :cond_4
    sget-boolean v0, Lcom/quicinc/fmradio/FMRadioService;->bi:Z

    if-nez v0, :cond_1

    .line 1178
    sput-boolean v5, Lcom/quicinc/fmradio/FMRadioService;->bi:Z

    .line 1179
    iput-boolean v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bm:Z

    .line 1180
    iput v3, p0, Lcom/quicinc/fmradio/FMRadioService;->bn:I

    .line 1181
    sput-boolean v2, Lcom/quicinc/fmradio/FMRadioService;->bh:Z

    goto :goto_0

    .line 1184
    :cond_5
    if-nez p1, :cond_1

    .line 1186
    sget-boolean v0, Lcom/quicinc/fmradio/FMRadioService;->bi:Z

    if-eqz v0, :cond_1

    .line 1190
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->g()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bf:Z

    if-eqz v0, :cond_6

    .line 1192
    const-string v0, "FMService"

    const-string v1, "Resuming after call:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->d()Z

    move-result v0

    if-ne v4, v0, :cond_1

    .line 1196
    sput-boolean v5, Lcom/quicinc/fmradio/FMRadioService;->bi:Z

    .line 1197
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->ba:Lcom/quicinc/fmradio/bg;

    if-eqz v0, :cond_1

    .line 1199
    :try_start_1
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->ba:Lcom/quicinc/fmradio/bg;

    invoke-interface {v0}, Lcom/quicinc/fmradio/bg;->z()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1200
    :catch_1
    move-exception v0

    .line 1201
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1204
    :cond_6
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1206
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->d()Z

    move-result v0

    if-eq v4, v0, :cond_7

    .line 1207
    const-string v0, "FMService"

    const-string v1, "fmOn failed......."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :goto_2
    sput-boolean v5, Lcom/quicinc/fmradio/FMRadioService;->bi:Z

    goto :goto_0

    .line 1209
    :cond_7
    sget-object v0, Lcom/quicinc/fmradio/FMRadioService;->bb:Lcom/quicinc/fmradio/ai;

    invoke-static {}, Lcom/quicinc/fmradio/ai;->getTunedFrequency()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->b(I)Z

    goto :goto_2
.end method

.method static synthetic u(Lcom/quicinc/fmradio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bz:Z

    return v0
.end method

.method private v(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .parameter

    .prologue
    .line 1219
    new-instance v0, Lcom/quicinc/fmradio/cy;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/cy;-><init>(Lcom/quicinc/fmradio/FMRadioService;)V

    .line 1252
    return-object v0
.end method

.method static synthetic v(Lcom/quicinc/fmradio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->y()V

    return-void
.end method

.method static synthetic w(Lcom/quicinc/fmradio/FMRadioService;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic x(Lcom/quicinc/fmradio/FMRadioService;)Landroid/hardware/fmradio/FmRxRdsData;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bs:Landroid/hardware/fmradio/FmRxRdsData;

    return-object v0
.end method

.method private y()V
    .locals 4

    .prologue
    .line 2918
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bv:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bw:Z

    if-ne v0, v1, :cond_0

    .line 2921
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2922
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->cd:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bU:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 2924
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->ap()V

    .line 2925
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bw:Z

    .line 2927
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/quicinc/fmradio/bg;)V
    .locals 0
    .parameter

    .prologue
    .line 2047
    iput-object p1, p0, Lcom/quicinc/fmradio/FMRadioService;->ba:Lcom/quicinc/fmradio/bg;

    .line 2048
    return-void
.end method

.method public a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 2063
    const/4 v1, 0x0

    .line 2064
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2068
    packed-switch p1, :pswitch_data_0

    .line 2079
    const-string v0, "headset"

    sput-object v0, Lcom/quicinc/fmradio/FMRadioService;->bj:Ljava/lang/String;

    .line 2083
    :goto_0
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2091
    :cond_0
    return v1

    .line 2071
    :pswitch_0
    const-string v0, "headset"

    sput-object v0, Lcom/quicinc/fmradio/FMRadioService;->bj:Ljava/lang/String;

    goto :goto_0

    .line 2075
    :pswitch_1
    const-string v0, "speaker"

    sput-object v0, Lcom/quicinc/fmradio/FMRadioService;->bj:Ljava/lang/String;

    goto :goto_0

    .line 2068
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Z)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2179
    .line 2180
    iget-object v2, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v2, :cond_1

    .line 2182
    if-ne p1, v0, :cond_0

    .line 2184
    const-string v2, "FMService"

    const-string v3, "seek:  Up"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    iget-object v2, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v2, v1, v0, v0}, Landroid/hardware/fmradio/FmReceiver;->searchStations(III)Z

    .line 2196
    :goto_0
    return v0

    .line 2189
    :cond_0
    const-string v2, "FMService"

    const-string v3, "seek:  Down"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    iget-object v2, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v2, v1, v0, v1}, Landroid/hardware/fmradio/FmReceiver;->searchStations(III)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public aC()Z
    .locals 1

    .prologue
    .line 1950
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bp:Z

    return v0
.end method

.method public aD()Z
    .locals 3

    .prologue
    .line 1961
    const/4 v0, 0x0

    .line 1962
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 1964
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1965
    const-string v0, "FMService"

    const-string v1, "device available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    const/4 v0, 0x1

    .line 1968
    :cond_0
    return v0
.end method

.method public aH()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2601
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bs:Landroid/hardware/fmradio/FmRxRdsData;

    if-eqz v0, :cond_0

    .line 2602
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bs:Landroid/hardware/fmradio/FmRxRdsData;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxRdsData;->setRadioText(Ljava/lang/String;)V

    .line 2603
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bs:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v0, v2}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmId(I)V

    .line 2604
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bs:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v0, v2}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmType(I)V

    .line 2605
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bs:Landroid/hardware/fmradio/FmRxRdsData;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxRdsData;->setPrgmServices(Ljava/lang/String;)V

    .line 2607
    :cond_0
    return-void
.end method

.method public aj()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aU:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/quicinc/fmradio/cq;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/cq;-><init>(Lcom/quicinc/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aU:Landroid/content/BroadcastReceiver;

    .line 302
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aU:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/quicinc/fmradio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 308
    :cond_0
    return-void
.end method

.method public ak()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aW:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/quicinc/fmradio/cr;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/cr;-><init>(Lcom/quicinc/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aW:Landroid/content/BroadcastReceiver;

    .line 331
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aW:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/quicinc/fmradio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    :cond_0
    return-void
.end method

.method public al()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aX:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Lcom/quicinc/fmradio/cs;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/cs;-><init>(Lcom/quicinc/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aX:Landroid/content/BroadcastReceiver;

    .line 352
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 353
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aX:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/quicinc/fmradio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    return-void
.end method

.method public am()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aT:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Lcom/quicinc/fmradio/cu;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/cu;-><init>(Lcom/quicinc/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aT:Landroid/content/BroadcastReceiver;

    .line 443
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 444
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bI:Lcom/quicinc/utils/e;

    invoke-virtual {v1}, Lcom/quicinc/utils/e;->ci()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string v1, "HDMI_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 449
    const-string v1, "com.quicinc.fmradio.exit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aT:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/quicinc/fmradio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 452
    :cond_0
    return-void
.end method

.method public an()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aZ:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Lcom/quicinc/fmradio/cv;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/cv;-><init>(Lcom/quicinc/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aZ:Landroid/content/BroadcastReceiver;

    .line 541
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 542
    const-string v1, "com.quicinc.fmradio.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aZ:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/quicinc/fmradio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 545
    :cond_0
    return-void
.end method

.method public ao()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aV:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Lcom/quicinc/fmradio/cw;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/cw;-><init>(Lcom/quicinc/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aV:Landroid/content/BroadcastReceiver;

    .line 586
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 587
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aV:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/quicinc/fmradio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 590
    :cond_0
    return-void
.end method

.method public as()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 864
    const-string v2, "FMService"

    const-string v3, "In startA2dpPlayback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bL:Z

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bl:Z

    if-ne v1, v2, :cond_0

    .line 867
    const-string v1, "Recording already in progress,can\'t play on BT"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 903
    :goto_0
    return v0

    .line 872
    :cond_0
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aY:Z

    if-eqz v0, :cond_1

    .line 873
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->at()V

    :cond_1
    move v0, v1

    .line 903
    goto :goto_0
.end method

.method public at()V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bu:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bu:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 913
    :catch_0
    move-exception v0

    .line 914
    const-string v0, "FMService"

    const-string v1, "Not able to delete file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public aw()V
    .locals 2

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bo:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1335
    new-instance v0, Lcom/quicinc/fmradio/ce;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/ce;-><init>(Lcom/quicinc/fmradio/FMRadioService;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bo:Landroid/content/BroadcastReceiver;

    .line 1351
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1352
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1353
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1354
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bo:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/quicinc/fmradio/FMRadioService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1356
    :cond_0
    return-void
.end method

.method public ax()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1518
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020034

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1520
    .local v1, status:Landroid/app/Notification;
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1521
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.quicinc.fmradio.FMRADIO_ACTIVITY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1523
    .local v0, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->aI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1525
    const/16 v2, 0x65

    invoke-virtual {p0, v2, v1}, Lcom/quicinc/fmradio/FMRadioService;->startForeground(ILandroid/app/Notification;)V

    .line 1530
    return-void
.end method

.method public az()V
    .locals 3

    .prologue
    .line 1431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bd:Z

    .line 1432
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmReceiver;->getInternalAntenna()Z

    move-result v0

    iput-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bd:Z

    .line 1435
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInternalAntenna: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1971
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2013
    :cond_0
    :goto_0
    return-void

    .line 1973
    :cond_1
    iput-boolean p1, p0, Lcom/quicinc/fmradio/FMRadioService;->bm:Z

    .line 1974
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->aC()Z

    move-result v0

    .line 1975
    if-nez p1, :cond_3

    .line 1976
    if-eqz v0, :cond_2

    .line 1977
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->m()Z

    .line 1978
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->aq()V

    .line 1979
    invoke-direct {p0, v2}, Lcom/quicinc/fmradio/FMRadioService;->k(Z)Z

    .line 1980
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->n()Z

    .line 1982
    :cond_2
    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1983
    if-eqz v0, :cond_3

    .line 1984
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->ap()V

    .line 1989
    :cond_3
    iget-boolean v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bJ:Z

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bI:Lcom/quicinc/utils/e;

    invoke-virtual {v1}, Lcom/quicinc/utils/e;->ck()Z

    move-result v1

    if-ne v2, v1, :cond_6

    .line 1990
    iget-boolean v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aY:Z

    if-ne v2, v1, :cond_4

    if-eq v2, p1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aY:Z

    if-nez v1, :cond_6

    if-nez p1, :cond_6

    .line 1993
    :cond_5
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->aq()V

    .line 1994
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->ap()V

    .line 1997
    :cond_6
    if-eqz p1, :cond_0

    .line 1998
    if-eqz v0, :cond_7

    .line 1999
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->aq()V

    .line 2000
    sget-boolean v1, Lcom/quicinc/fmradio/FMRadioService;->bh:Z

    if-eqz v1, :cond_8

    .line 2001
    invoke-direct {p0, v3}, Lcom/quicinc/fmradio/FMRadioService;->k(Z)Z

    .line 2008
    :cond_7
    :goto_1
    invoke-static {v2, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 2009
    if-eqz v0, :cond_0

    .line 2010
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->ap()V

    goto :goto_0

    .line 2003
    :cond_8
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->m()Z

    .line 2004
    invoke-direct {p0, v3}, Lcom/quicinc/fmradio/FMRadioService;->k(Z)Z

    .line 2005
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->n()Z

    goto :goto_1
.end method

.method public b(I)Z
    .locals 6
    .parameter

    .prologue
    .line 2155
    const/4 v0, 0x0

    .line 2156
    int-to-double v1, p1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    .line 2158
    const-string v3, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tuneRadio:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2161
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Landroid/hardware/fmradio/FmReceiver;->setStation(I)Z

    .line 2162
    const/4 v0, 0x1

    .line 2164
    :cond_0
    return v0
.end method

.method public c(I)Z
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x1f

    const/4 v1, 0x5

    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 2216
    .line 2217
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v0, :cond_2

    .line 2219
    const-string v0, "FMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scan:  PTY: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    invoke-static {}, Lcom/quicinc/fmradio/ai;->Z()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2223
    if-lez p1, :cond_0

    const/16 v0, 0x17

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_3

    if-gt p1, v7, :cond_3

    .line 2225
    :cond_1
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fmradio/FmReceiver;->searchStations(IIIII)Z

    move-result v5

    .line 2257
    :cond_2
    :goto_0
    return v5

    .line 2233
    :cond_3
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0, v3, v2, v3}, Landroid/hardware/fmradio/FmReceiver;->searchStations(III)Z

    move-result v5

    goto :goto_0

    .line 2241
    :cond_4
    if-lez p1, :cond_5

    if-gt p1, v7, :cond_5

    .line 2243
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fmradio/FmReceiver;->searchStations(IIIII)Z

    move-result v5

    goto :goto_0

    .line 2251
    :cond_5
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0, v3, v2, v3}, Landroid/hardware/fmradio/FmReceiver;->searchStations(III)Z

    move-result v5

    goto :goto_0
.end method

.method public c(Z)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2442
    .line 2443
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2445
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLowPowerMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    if-eqz p1, :cond_1

    .line 2448
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmReceiver;->setPowerMode(I)Z

    move-result v0

    .line 2455
    :cond_0
    :goto_0
    return v0

    .line 2452
    :cond_1
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v1, v0}, Landroid/hardware/fmradio/FmReceiver;->setPowerMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public cancelSearch()Z
    .locals 2

    .prologue
    .line 2322
    const/4 v0, 0x0

    .line 2323
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2325
    const-string v0, "FMService"

    const-string v1, "cancelSearch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmReceiver;->cancelSearch()Z

    move-result v0

    .line 2328
    :cond_0
    return v0
.end method

.method public d(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2297
    .line 2298
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 2300
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekPI:  piCode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    const/4 v1, 0x6

    move v3, v2

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fmradio/FmReceiver;->searchStations(IIIII)Z

    move-result v4

    .line 2308
    :cond_0
    return v4
.end method

.method public d(Z)Z
    .locals 3
    .parameter

    .prologue
    .line 2486
    const/4 v0, 0x0

    .line 2487
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2489
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableAutoAF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Landroid/hardware/fmradio/FmReceiver;->enableAFjump(Z)Z

    move-result v0

    .line 2492
    :cond_0
    return v0
.end method

.method public e(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2273
    .line 2274
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2276
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchStrongStationList:  numStations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1, v0}, Landroid/hardware/fmradio/FmReceiver;->searchStationList(IIII)Z

    move-result v0

    .line 2282
    :cond_0
    return v0
.end method

.method public e(Z)Z
    .locals 3
    .parameter

    .prologue
    .line 2506
    const/4 v0, 0x0

    .line 2507
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2509
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableStereo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Landroid/hardware/fmradio/FmReceiver;->setStereoMode(Z)Z

    move-result v0

    .line 2512
    :cond_0
    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 1941
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bk:Z

    return v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 2597
    iget v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bn:I

    return v0
.end method

.method public getIntDet()I
    .locals 1

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmReceiver;->getIntDet()I

    move-result v0

    return v0
.end method

.method public getMpxDcc()I
    .locals 1

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmReceiver;->getMpxDcc()I

    move-result v0

    return v0
.end method

.method public getPowerMode()I
    .locals 4

    .prologue
    .line 2464
    const/4 v0, 0x0

    .line 2465
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2467
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmReceiver;->getPowerMode()I

    move-result v0

    .line 2468
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLowPowerMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    :cond_0
    return v0
.end method

.method public getRadioText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2364
    const-string v0, ""

    .line 2365
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bs:Landroid/hardware/fmradio/FmRxRdsData;

    if-eqz v1, :cond_0

    .line 2367
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bs:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmRxRdsData;->getRadioText()Ljava/lang/String;

    move-result-object v0

    .line 2368
    if-nez v0, :cond_0

    .line 2370
    const-string v0, ""

    .line 2373
    :cond_0
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Radio Text: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 2890
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmReceiver;->getRssi()I

    move-result v0

    return v0
.end method

.method public getSINR()I
    .locals 1

    .prologue
    .line 2905
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmReceiver;->getSINR()I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 1946
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bq:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 1954
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bl:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 2145
    sget-boolean v0, Lcom/quicinc/fmradio/FMRadioService;->bh:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 1958
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bm:Z

    return v0
.end method

.method public k()Z
    .locals 4

    .prologue
    .line 2025
    const/4 v0, 0x0

    .line 2026
    const-string v1, "FMService"

    const-string v2, "fmReconfigure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2030
    invoke-static {}, Lcom/quicinc/fmradio/ai;->X()Landroid/hardware/fmradio/FmConfig;

    move-result-object v0

    .line 2031
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RadioBand   :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmConfig;->getRadioBand()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emphasis    :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmConfig;->getEmphasis()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChSpacing   :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmConfig;->getChSpacing()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RdsStd      :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmConfig;->getRdsStd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LowerLimit  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmConfig;->getLowerLimit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpperLimit  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmConfig;->getUpperLimit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v1, v0}, Landroid/hardware/fmradio/FmReceiver;->configure(Landroid/hardware/fmradio/FmConfig;)Z

    move-result v0

    .line 2039
    :cond_0
    return v0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 2055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->ba:Lcom/quicinc/fmradio/bg;

    .line 2056
    return-void
.end method

.method public m()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2099
    .line 2100
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2111
    :goto_0
    return v0

    .line 2102
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2103
    const/4 v0, 0x0

    goto :goto_0

    .line 2104
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2105
    const-string v2, "FMService"

    const-string v3, "mute:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    if-eqz v0, :cond_2

    .line 2108
    sput-boolean v1, Lcom/quicinc/fmradio/FMRadioService;->bh:Z

    .line 2109
    iget v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bU:I

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :cond_2
    move v0, v1

    .line 2111
    goto :goto_0
.end method

.method public n()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2119
    const/4 v1, 0x1

    .line 2120
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->isMuted()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2136
    :goto_0
    return v0

    .line 2122
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 2123
    goto :goto_0

    .line 2124
    :cond_1
    const-string v0, "FMService"

    const-string v3, "unMute:"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2126
    if-eqz v0, :cond_2

    .line 2128
    sput-boolean v2, Lcom/quicinc/fmradio/FMRadioService;->bh:Z

    .line 2129
    iget v3, p0, Lcom/quicinc/fmradio/FMRadioService;->bU:I

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2130
    sget-boolean v0, Lcom/quicinc/fmradio/FMRadioService;->bi:Z

    if-eqz v0, :cond_2

    .line 2133
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->ap()V

    :cond_2
    move v0, v1

    .line 2136
    goto :goto_0
.end method

.method public o()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 768
    const-string v2, "FMService"

    const-string v3, "In startRecording of Recorder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bL:Z

    if-ne v1, v2, :cond_1

    iget-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->aY:Z

    if-ne v1, v2, :cond_1

    .line 771
    const-string v1, "playback on BT in progress,can\'t record now"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 860
    :cond_0
    :goto_0
    return v0

    .line 776
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->p()V

    .line 778
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->aF()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 780
    iget-wide v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bQ:J

    const-wide/32 v4, 0x2faf080

    sub-long/2addr v2, v4

    .line 788
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bx:Ljava/io/File;

    .line 789
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 790
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_2

    .line 792
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/sdcard"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 794
    :cond_2
    :try_start_0
    const-string v3, "FMRecording"

    const-string v4, ".aac"

    invoke-static {v3, v4, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bx:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    iput-boolean v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bl:Z

    .line 859
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/quicinc/fmradio/FMRadioService;->by:J

    move v0, v1

    .line 860
    goto :goto_0

    .line 796
    :catch_0
    move-exception v1

    .line 797
    const-string v1, "FMService"

    const-string v2, "Not able to access SD Card"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lcom/quicinc/fmradio/FMRadioService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter

    .prologue
    .line 647
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bY:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bf:Z

    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->c(Z)Z

    .line 651
    const-string v0, "FMService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->cb:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 175
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 177
    new-instance v0, Lcom/quicinc/fmradio/ai;

    invoke-direct {v0, p0}, Lcom/quicinc/fmradio/ai;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/quicinc/fmradio/FMRadioService;->bb:Lcom/quicinc/fmradio/ai;

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->ba:Lcom/quicinc/fmradio/bg;

    .line 179
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 184
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 186
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 187
    const-string v0, "ro.fm.analogpath.supported"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bp:Z

    .line 189
    new-instance v0, Lcom/quicinc/utils/e;

    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/quicinc/utils/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bI:Lcom/quicinc/utils/e;

    .line 190
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->aw()V

    .line 191
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->am()V

    .line 192
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->aj()V

    .line 193
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->ak()V

    .line 195
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->al()V

    .line 198
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->an()V

    .line 199
    const-string v0, "ro.fm.mulinst.recording.support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iput-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bL:Z

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->ao()V

    .line 208
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bY:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 209
    iput v2, v0, Landroid/os/Message;->what:I

    .line 210
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bY:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 212
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 213
    const-string v1, "isA2dpDeviceSupported"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    const-string v1, "=true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bJ:Z

    .line 215
    const-string v0, "FMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " is A2DP device Supported In HAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bJ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    const-string v0, "FMService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "FMService"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bY:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 229
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 230
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->cd:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 232
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bo:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bo:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    iput-object v2, p0, Lcom/quicinc/fmradio/FMRadioService;->bo:Landroid/content/BroadcastReceiver;

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aT:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aT:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    iput-object v2, p0, Lcom/quicinc/fmradio/FMRadioService;->aT:Landroid/content/BroadcastReceiver;

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aU:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aU:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    iput-object v2, p0, Lcom/quicinc/fmradio/FMRadioService;->aU:Landroid/content/BroadcastReceiver;

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aV:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aV:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    iput-object v2, p0, Lcom/quicinc/fmradio/FMRadioService;->aV:Landroid/content/BroadcastReceiver;

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aZ:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    .line 250
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aZ:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 251
    iput-object v2, p0, Lcom/quicinc/fmradio/FMRadioService;->aZ:Landroid/content/BroadcastReceiver;

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aW:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 254
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aW:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    iput-object v2, p0, Lcom/quicinc/fmradio/FMRadioService;->aW:Landroid/content/BroadcastReceiver;

    .line 258
    :cond_6
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aX:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 259
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aX:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    iput-object v2, p0, Lcom/quicinc/fmradio/FMRadioService;->aX:Landroid/content/BroadcastReceiver;

    .line 263
    :cond_7
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->e()Z

    .line 265
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 270
    const-string v0, "FMService"

    const-string v1, "onDestroy: unbindFromService completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bA:Z

    .line 275
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 276
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 657
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bY:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bf:Z

    .line 660
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->c(Z)Z

    .line 661
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bv:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/quicinc/fmradio/FMRadioService;->ap()V

    .line 663
    :cond_0
    const-string v0, "FMService"

    const-string v1, "onRebind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 668
    const-string v0, "FMService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bA:Z

    .line 670
    iput p2, p0, Lcom/quicinc/fmradio/FMRadioService;->be:I

    .line 673
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bY:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 674
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bY:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 675
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 676
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bY:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 677
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bf:Z

    .line 682
    const-string v0, "FMService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->l()V

    .line 686
    invoke-virtual {p0, v2}, Lcom/quicinc/fmradio/FMRadioService;->c(Z)Z

    .line 687
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    :goto_0
    return v2

    .line 693
    :cond_0
    iget v0, p0, Lcom/quicinc/fmradio/FMRadioService;->be:I

    invoke-virtual {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->stopSelf(I)V

    goto :goto_0
.end method

.method public p()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 997
    iput-boolean v4, p0, Lcom/quicinc/fmradio/FMRadioService;->bl:Z

    .line 1008
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/quicinc/fmradio/FMRadioService;->by:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 1009
    if-nez v0, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1012
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storage state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1016
    :try_start_0
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bx:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/quicinc/fmradio/FMRadioService;->a(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1028
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->ba:Lcom/quicinc/fmradio/bg;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->ba:Lcom/quicinc/fmradio/bg;

    invoke-interface {v0}, Lcom/quicinc/fmradio/bg;->I()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1031
    :catch_0
    move-exception v0

    .line 1033
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1018
    :catch_1
    move-exception v0

    .line 1019
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1023
    :cond_2
    const-string v0, "FMService"

    const-string v1, "SD card must have removed during recording. "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const-string v0, "Recording aborted"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public q()[I
    .locals 2

    .prologue
    .line 2424
    const/4 v0, 0x0

    .line 2425
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 2427
    const-string v0, "FMService"

    const-string v1, "getSearchList: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmReceiver;->getStationList()[I

    move-result-object v0

    .line 2430
    :cond_0
    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2341
    const-string v0, ""

    .line 2342
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bs:Landroid/hardware/fmradio/FmRxRdsData;

    if-eqz v1, :cond_0

    .line 2344
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bs:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmRxRdsData;->getPrgmServices()Ljava/lang/String;

    move-result-object v0

    .line 2345
    if-nez v0, :cond_0

    .line 2347
    const-string v0, ""

    .line 2350
    :cond_0
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Program Service: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    return-object v0
.end method

.method public s()I
    .locals 4

    .prologue
    .line 2387
    const/4 v0, -0x1

    .line 2388
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bs:Landroid/hardware/fmradio/FmRxRdsData;

    if-eqz v1, :cond_0

    .line 2390
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bs:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmRxRdsData;->getPrgmType()I

    move-result v0

    .line 2392
    :cond_0
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PTY: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    return v0
.end method

.method public setHiLoInj(I)V
    .locals 1
    .parameter

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0, p1}, Landroid/hardware/fmradio/FmReceiver;->setHiLoInj(I)V

    .line 2903
    return-void
.end method

.method public t()I
    .locals 4

    .prologue
    .line 2406
    const/4 v0, -0x1

    .line 2407
    iget-object v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bs:Landroid/hardware/fmradio/FmRxRdsData;

    if-eqz v1, :cond_0

    .line 2409
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bs:Landroid/hardware/fmradio/FmRxRdsData;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmRxRdsData;->getPrgmId()I

    move-result v0

    .line 2411
    :cond_0
    const-string v1, "FMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PI: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    return v0
.end method

.method public u()Z
    .locals 2

    .prologue
    .line 2524
    const/4 v0, 0x0

    .line 2525
    iget-boolean v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bd:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/quicinc/fmradio/FMRadioService;->bc:Z

    if-eqz v1, :cond_1

    .line 2527
    :cond_0
    const/4 v0, 0x1

    .line 2529
    :cond_1
    return v0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 2586
    iget-boolean v0, p0, Lcom/quicinc/fmradio/FMRadioService;->bc:Z

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 2592
    invoke-virtual {p0}, Lcom/quicinc/fmradio/FMRadioService;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2593
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 2893
    iget-object v0, p0, Lcom/quicinc/fmradio/FMRadioService;->aS:Landroid/hardware/fmradio/FmReceiver;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmReceiver;->getIoverc()I

    move-result v0

    return v0
.end method
