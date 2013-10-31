.class public Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;
.super Ljava/lang/Object;
.source "PermissionFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$ReqPermHandler;
    }
.end annotation


# static fields
.field public static FOREIGNAPPLIST:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCK:Ljava/lang/Object; = null

.field public static PERMLIST:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static SWFOREIGNAPPLIST:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SWPERMISSIOON:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_STATE"

.field public static final SWPERMISSIOON2:Ljava/lang/String; = "android.permission.INTERNET"

.field public static SWSYSTEMAPPLIST:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SW_LOCK:Ljava/lang/Object; = null

.field public static SYSTEMAPPLIST:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CloudSecurity"

.field private static final XMLPATH:Ljava/lang/String; = "/system/etc/permList.xml"

.field public static apbHashMap:Ljava/util/HashMap;

.field public static swHashMap:Ljava/util/HashMap;


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private dataProSwitch:Z

.field public isInetPerm:Z

.field private listenProSwitch:Z

.field private mAPService:Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;

.field private moneyProSwitch:Z

.field private pContext:Landroid/content/Context;

.field private pugProSwitch:Z

.field private startTime:J

.field private switchFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    sput-object v1, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->PERMLIST:Ljava/util/HashMap;

    .line 60
    sput-object v1, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->SYSTEMAPPLIST:Ljava/util/HashSet;

    .line 61
    sput-object v1, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->SWSYSTEMAPPLIST:Ljava/util/HashSet;

    .line 63
    sput-object v1, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->FOREIGNAPPLIST:Ljava/util/HashSet;

    .line 64
    sput-object v1, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->SWFOREIGNAPPLIST:Ljava/util/HashSet;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->LOCK:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->SW_LOCK:Ljava/lang/Object;

    .line 69
    sput-object v1, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    .line 71
    sput-object v1, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->swHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "pContext"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->isInetPerm:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->pContext:Landroid/content/Context;

    .line 76
    iput-boolean v1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->switchFlag:Z

    .line 79
    iput-boolean v1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->dataProSwitch:Z

    .line 82
    iput-boolean v1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->moneyProSwitch:Z

    .line 85
    iput-boolean v1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->listenProSwitch:Z

    .line 88
    iput-boolean v1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->pugProSwitch:Z

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->startTime:J

    .line 148
    new-instance v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$1;

    invoke-direct {v0, p0}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$1;-><init>(Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;)V

    iput-object v0, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->conn:Landroid/content/ServiceConnection;

    .line 96
    iput-object p1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->pContext:Landroid/content/Context;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->swHashMap:Ljava/util/HashMap;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;)Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->mAPService:Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;)Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->mAPService:Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->bindAppPermAlertService()V

    return-void
.end method

.method private bindAppPermAlertService()V
    .locals 4

    .prologue
    .line 289
    const-string v1, "CloudSecurity"

    const-string v2, "bindAppPermAlertService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yulong.android.cloudsecurity.server.IAppPermAlertService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->pContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->pContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public static getApbMemory()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private initPermList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permList.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, permListFile:Ljava/io/File;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->SYSTEMAPPLIST:Ljava/util/HashSet;

    .line 127
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->SWSYSTEMAPPLIST:Ljava/util/HashSet;

    .line 128
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->FOREIGNAPPLIST:Ljava/util/HashSet;

    .line 129
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sput-object v2, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->SWFOREIGNAPPLIST:Ljava/util/HashSet;

    .line 131
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->PERMLIST:Ljava/util/HashMap;

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    .end local v1           #permListFile:Ljava/io/File;
    :goto_0
    return-void

    .line 137
    .restart local v1       #permListFile:Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->readxml(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 139
    .end local v1           #permListFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/io/FileNotFoundException;
    iput-boolean v3, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->switchFlag:Z

    .line 141
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    iput-boolean v3, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->switchFlag:Z

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private readxml(Ljava/io/InputStream;)V
    .locals 4
    .parameter "instream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 463
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 464
    .local v1, saxf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 466
    .local v2, saxp:Ljavax/xml/parsers/SAXParser;
    new-instance v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$ReqPermHandler;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$ReqPermHandler;-><init>(Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$1;)V

    .line 468
    .local v0, rpHandler:Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter$ReqPermHandler;
    invoke-virtual {v2, p1, v0}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 469
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 470
    return-void
.end method

.method private unbindAppPermService()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->pContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->conn:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->pContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0
.end method


# virtual methods
.method public checkUidPerm(ILjava/lang/String;)Z
    .locals 13
    .parameter "uid"
    .parameter "permName"

    .prologue
    const/4 v7, 0x1

    .line 170
    const/4 v2, 0x1

    .line 171
    .local v2, cupflag:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->startTime:J

    .line 174
    sget-object v8, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->SW_LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 175
    :try_start_0
    iget-boolean v9, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->isInetPerm:Z

    if-eqz v9, :cond_4

    .line 177
    sget-object v9, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->swHashMap:Ljava/util/HashMap;

    if-nez v9, :cond_1

    .line 178
    monitor-exit v8

    .line 253
    :cond_0
    :goto_0
    return v7

    .line 181
    :cond_1
    sget-object v9, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->swHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 183
    .local v4, swEndTime:Ljava/lang/Long;
    iget-object v9, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->mAPService:Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;

    if-eqz v9, :cond_3

    if-eqz v4, :cond_2

    iget-wide v9, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->startTime:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x2710

    cmp-long v9, v9, v11

    if-lez v9, :cond_3

    .line 188
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->mAPService:Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;

    invoke-interface {v9, p1}, Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;->sendSWInfo(I)Z

    .line 190
    sget-object v9, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->swHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v8

    goto :goto_0

    .line 197
    .end local v4           #swEndTime:Ljava/lang/Long;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 191
    .restart local v4       #swEndTime:Ljava/lang/Long;
    :catch_0
    move-exception v3

    .line 192
    .local v3, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 197
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v4           #swEndTime:Ljava/lang/Long;
    :cond_4
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    sget-object v8, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    if-eqz v8, :cond_0

    .line 203
    sget-object v8, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->PERMLIST:Ljava/util/HashMap;

    invoke-virtual {v8, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 204
    .local v6, temp:[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v8, v6

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 208
    aget-object v8, v6, v7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, app_proType:Ljava/lang/String;
    sget-object v8, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    .line 211
    :try_start_4
    sget-object v9, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 213
    .local v5, temHashMap:Ljava/util/HashMap;
    if-nez v5, :cond_5

    .line 214
    const-string v9, "CloudSecurity"

    const-string v10, "temHashMap is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_5
    if-eqz v5, :cond_c

    .line 218
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    .line 221
    .local v0, apb:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    if-nez v0, :cond_6

    .line 222
    const-string v9, "CloudSecurity"

    const-string v10, "apb is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    monitor-exit v8

    goto/16 :goto_0

    .line 254
    .end local v0           #apb:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    .end local v5           #temHashMap:Ljava/util/HashMap;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 226
    .restart local v0       #apb:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    .restart local v5       #temHashMap:Ljava/util/HashMap;
    :cond_6
    :try_start_5
    invoke-virtual {v0}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->getAllowed()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v9

    if-gtz v9, :cond_7

    .line 227
    const/4 v2, 0x0

    .line 231
    :cond_7
    :try_start_6
    const-string v9, "stolenlisten"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 232
    iget-boolean v9, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->listenProSwitch:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v9, :cond_8

    .line 233
    :try_start_7
    monitor-exit v8

    move v7, v2

    goto/16 :goto_0

    .line 235
    :cond_8
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 237
    :cond_9
    :try_start_8
    const-string v9, "costmoney"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-boolean v9, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->moneyProSwitch:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    if-nez v9, :cond_a

    .line 238
    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 239
    :cond_a
    :try_start_a
    const-string v9, "pug"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-boolean v9, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->pugProSwitch:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    if-nez v9, :cond_b

    .line 240
    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0

    .line 242
    :cond_b
    :try_start_c
    iget-object v7, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->mAPService:Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;

    if-eqz v7, :cond_c

    iget-wide v9, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->startTime:J

    invoke-virtual {v0}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->getEndTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/16 v11, 0xbb8

    cmp-long v7, v9, v11

    if-ltz v7, :cond_c

    .line 243
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->setPermType(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->setEndTime(J)V

    .line 245
    iget-object v7, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->mAPService:Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;

    invoke-interface {v7, v0}, Lcom/yulong/android/cloudsecurity/server/IAppPermAlertService;->sendAppPermInfo(Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1

    .line 253
    .end local v0           #apb:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    :cond_c
    :goto_2
    :try_start_d
    monitor-exit v8

    move v7, v2

    goto/16 :goto_0

    .line 248
    .restart local v0       #apb:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    :catch_1
    move-exception v3

    .line 250
    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_2
.end method

.method public deleteAllData()Z
    .locals 2

    .prologue
    .line 447
    sget-object v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x0

    .line 453
    :goto_0
    return v0

    .line 451
    :cond_0
    sget-object v1, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 452
    :try_start_0
    sget-object v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 453
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteData([Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;)Z
    .locals 7
    .parameter "apbs"

    .prologue
    .line 327
    if-eqz p1, :cond_0

    sget-object v4, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 328
    :cond_0
    const/4 v4, 0x0

    .line 338
    :goto_0
    return v4

    .line 330
    :cond_1
    sget-object v5, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 332
    move-object v1, p1

    .local v1, arr$:[Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    :try_start_0
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 334
    .local v0, apb:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    sget-object v4, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    .line 335
    sget-object v4, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 338
    .end local v0           #apb:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    :cond_3
    const/4 v4, 0x1

    monitor-exit v5

    goto :goto_0

    .line 339
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public insertData(Ljava/util/List;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, apbs:Ljava/util/List;,"Ljava/util/List<Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    if-nez v5, :cond_1

    .line 350
    :cond_0
    const/4 v5, 0x0

    .line 378
    :goto_0
    return v5

    .line 353
    :cond_1
    const-string v5, "CloudSecurity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission-insertData-start apbHashMapsize-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/16 v2, -0x64

    .line 357
    .local v2, previous_uid:I
    sget-object v6, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 358
    const/4 v3, 0x0

    .line 360
    .local v3, tempData:Ljava/util/HashMap;
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    .line 362
    .local v0, apb:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    invoke-virtual {v0}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->getUid()I

    move-result v5

    if-eq v2, v5, :cond_2

    .line 363
    if-lez v2, :cond_4

    .line 364
    sget-object v5, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    const/4 v3, 0x0

    move-object v4, v3

    .line 367
    .end local v3           #tempData:Ljava/util/HashMap;
    .local v4, tempData:Ljava/util/HashMap;
    :goto_2
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 372
    .end local v4           #tempData:Ljava/util/HashMap;
    .restart local v3       #tempData:Ljava/util/HashMap;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->getProType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-virtual {v0}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->getUid()I

    move-result v2

    goto :goto_1

    .line 376
    .end local v0           #apb:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    :cond_3
    sget-object v5, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const/4 v5, 0x1

    monitor-exit v6

    goto :goto_0

    .line 379
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .end local v3           #tempData:Ljava/util/HashMap;
    .restart local v0       #apb:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #tempData:Ljava/util/HashMap;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #tempData:Ljava/util/HashMap;
    .restart local v3       #tempData:Ljava/util/HashMap;
    goto :goto_3

    :cond_4
    move-object v4, v3

    .end local v3           #tempData:Ljava/util/HashMap;
    .restart local v4       #tempData:Ljava/util/HashMap;
    goto :goto_2
.end method

.method public isSwitchFlag()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->switchFlag:Z

    return v0
.end method

.method public setDataProSwitch(Z)V
    .locals 0
    .parameter "dataProSwitch"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->dataProSwitch:Z

    .line 103
    return-void
.end method

.method public setListenProSwitch(Z)V
    .locals 0
    .parameter "listenProSwitch"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->listenProSwitch:Z

    .line 111
    return-void
.end method

.method public setMoneyProSwitch(Z)V
    .locals 0
    .parameter "moneyProSwitch"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->moneyProSwitch:Z

    .line 107
    return-void
.end method

.method public setPugProSwitch(Z)V
    .locals 0
    .parameter "pugProSwitch"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->pugProSwitch:Z

    .line 115
    return-void
.end method

.method public setSwitchFlag(Z)V
    .locals 1
    .parameter "switchFlag"

    .prologue
    .line 271
    sget-object v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->PERMLIST:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->PERMLIST:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->PERMLIST:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->initPermList()V

    .line 274
    :cond_1
    if-eqz p1, :cond_2

    .line 275
    invoke-direct {p0}, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->bindAppPermAlertService()V

    .line 281
    :cond_2
    iput-boolean p1, p0, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->switchFlag:Z

    .line 282
    return-void
.end method

.method public updateAllData(Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;)Z
    .locals 5
    .parameter "apb"

    .prologue
    .line 417
    if-eqz p1, :cond_0

    sget-object v3, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 418
    :cond_0
    const/4 v3, 0x0

    .line 437
    :goto_0
    return v3

    .line 421
    :cond_1
    sget-object v4, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 423
    :try_start_0
    sget-object v3, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 426
    .local v2, tempHashMap:Ljava/util/HashMap;
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->getProType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 429
    invoke-virtual {p1}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->getProType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    .line 432
    .local v1, tempApb:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    if-eqz v1, :cond_2

    .line 433
    invoke-virtual {p1}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->getAllowed()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->setAllowed(I)V

    goto :goto_1

    .line 438
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #tempApb:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    .end local v2           #tempHashMap:Ljava/util/HashMap;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 437
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v3, 0x1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateData(Ljava/util/List;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, apbs:Ljava/util/List;,"Ljava/util/List<Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;>;"
    if-eqz p1, :cond_0

    sget-object v4, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 390
    :cond_0
    const/4 v4, 0x0

    .line 406
    :goto_0
    return v4

    .line 393
    :cond_1
    sget-object v5, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 394
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    .line 396
    .local v0, apb:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    sget-object v4, Lcom/yulong/android/cloudsecurity/permfilter/PermissionFilter;->apbHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 397
    .local v3, tempHashMap:Ljava/util/HashMap;
    if-eqz v3, :cond_2

    .line 398
    invoke-virtual {v0}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->getProType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;

    .line 401
    .local v2, tempApb:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    if-eqz v2, :cond_2

    .line 402
    invoke-virtual {v0}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->getAllowed()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;->setAllowed(I)V

    goto :goto_1

    .line 407
    .end local v0           #apb:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #tempApb:Lcom/yulong/android/cloudsecurity/bean/AppPermissionBean;
    .end local v3           #tempHashMap:Ljava/util/HashMap;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 406
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v4, 0x1

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
