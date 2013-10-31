.class Lcom/yulong/android/internal/telephony/SidNidOverride$1;
.super Ljava/lang/Thread;
.source "SidNidOverride.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/internal/telephony/SidNidOverride;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/internal/telephony/SidNidOverride;


# direct methods
.method constructor <init>(Lcom/yulong/android/internal/telephony/SidNidOverride;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yulong/android/internal/telephony/SidNidOverride$1;->this$0:Lcom/yulong/android/internal/telephony/SidNidOverride;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    :try_start_0
    #calls: Lcom/yulong/android/internal/telephony/SidNidOverride;->loadSpnOverrides()V
    invoke-static {}, Lcom/yulong/android/internal/telephony/SidNidOverride;->access$000()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GSM"

    const-string v2, "SidNidOverride_init:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
