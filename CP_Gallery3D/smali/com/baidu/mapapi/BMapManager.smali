.class public Lcom/baidu/mapapi/BMapManager;
.super Ljava/lang/Object;


# static fields
.field static b:Z


# instance fields
.field a:Lcom/baidu/mapapi/Mj;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mapapi/BMapManager;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/Mj;

    iput-object v0, p0, Lcom/baidu/mapapi/BMapManager;->c:Landroid/content/Context;

    iput-object p1, p0, Lcom/baidu/mapapi/BMapManager;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/baidu/mapapi/BMapManager;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/mapapi/BMapManager;->stop()Z

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mapapi/BMapManager;->b:Z

    iget-object v0, p0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/Mj;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/baidu/mapapi/Mj;->f:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/baidu/mapapi/Mj;->f:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mapapi/Mj;->f:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/Mj;

    invoke-virtual {v0}, Lcom/baidu/mapapi/Mj;->UnInitMapApiEngine()I

    iput-object v2, p0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/Mj;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "baidumap"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v2, Lcom/baidu/mapapi/Mj;->f:Ljava/net/ServerSocket;

    goto :goto_0
.end method

.method public getLocationManager()Lcom/baidu/mapapi/MKLocationManager;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    return-object v0
.end method

.method public init(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sput-boolean v0, Lcom/baidu/mapapi/BMapManager;->b:Z

    iget-object v1, p0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/Mj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/mapapi/Mj;

    iget-object v2, p0, Lcom/baidu/mapapi/BMapManager;->c:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/baidu/mapapi/Mj;-><init>(Lcom/baidu/mapapi/BMapManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/Mj;

    iget-object v1, p0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/Mj;

    invoke-virtual {v1, p1, p2}, Lcom/baidu/mapapi/Mj;->a(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/Mj;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    invoke-virtual {v1, p0}, Lcom/baidu/mapapi/MKLocationManager;->a(Lcom/baidu/mapapi/BMapManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MKLocationManager;->b()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public start()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcom/baidu/mapapi/BMapManager;->b:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/Mj;

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/Mj;

    invoke-virtual {v2}, Lcom/baidu/mapapi/Mj;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    sput-boolean v0, Lcom/baidu/mapapi/BMapManager;->b:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public stop()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/baidu/mapapi/BMapManager;->b:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/Mj;

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/Mj;

    invoke-virtual {v2}, Lcom/baidu/mapapi/Mj;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    sput-boolean v1, Lcom/baidu/mapapi/BMapManager;->b:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
