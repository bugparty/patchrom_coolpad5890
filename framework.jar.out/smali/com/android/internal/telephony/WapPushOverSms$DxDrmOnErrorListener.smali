.class Lcom/android/internal/telephony/WapPushOverSms$DxDrmOnErrorListener;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WapPushOverSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DxDrmOnErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/WapPushOverSms;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms$DxDrmOnErrorListener;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/WapPushOverSms;Lcom/android/internal/telephony/WapPushOverSms$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms$DxDrmOnErrorListener;-><init>(Lcom/android/internal/telephony/WapPushOverSms;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V
    .locals 4
    .parameter "client"
    .parameter "event"

    .prologue
    .line 373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.DX_WAP_PUSH_RIGHTS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "eventType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms$DxDrmOnErrorListener;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    #getter for: Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;
    invoke-static {v1}, Lcom/android/internal/telephony/WapPushOverSms;->access$400(Lcom/android/internal/telephony/WapPushOverSms;)Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 377
    return-void
.end method
