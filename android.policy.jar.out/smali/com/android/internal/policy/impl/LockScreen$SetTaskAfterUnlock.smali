.class Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetTaskAfterUnlock"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mTarget:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "target"

    .prologue
    .line 933
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 934
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;->mContext:Landroid/content/Context;

    .line 935
    iput p3, p0, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;->mTarget:I

    .line 936
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 939
    iget v6, p0, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;->mTarget:I

    packed-switch v6, :pswitch_data_0

    .line 976
    :goto_0
    return-void

    .line 941
    :pswitch_0
    const-string v6, "LockScreen"

    const-string v7, ".............run()LockScreenStatusInfo.ONTRIGGER_CAMERA"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v1, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 943
    .local v1, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1, v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 946
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v6, "LockScreen"

    const-string v7, ".............run()LockScreenStatusInfo.ONTRIGGER_INCOMING_CALL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 948
    .local v0, intenIncomingCall:Landroid/content/Intent;
    const/high16 v6, 0x1020

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 950
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 953
    .end local v0           #intenIncomingCall:Landroid/content/Intent;
    :pswitch_2
    const-string v6, "LockScreen"

    const-string v7, ".............run()LockScreenStatusInfo.ONTRIGGER_MESSAGE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    const/4 v7, -0x1

    #calls: Lcom/android/internal/policy/impl/LockScreen;->startSmsApp(I)V
    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/LockScreen;->access$1100(Lcom/android/internal/policy/impl/LockScreen;I)V

    .line 956
    :pswitch_3
    const-string v6, "LockScreen"

    const-string v7, ".............run()LockScreenStatusInfo.ONTRIGGER_EMAIL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    new-instance v5, Landroid/content/Intent;

    const-string v6, "yulong.intent.action.UNLOCKSCREEN_TO_EMAIL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 958
    .local v5, intentToEmail:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 961
    .end local v5           #intentToEmail:Landroid/content/Intent;
    :pswitch_4
    const-string v6, "LockScreen"

    const-string v7, ".............run()LockScreenStatusInfo.ONTRIGGER_CALENDAR"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    new-instance v3, Landroid/content/Intent;

    const-string v6, "yulong.intent.action.UNLOCKSCREEN_TO_CALENDAR"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 963
    .local v3, intentToCalendar:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 966
    .end local v3           #intentToCalendar:Landroid/content/Intent;
    :pswitch_5
    const-string v6, "LockScreen"

    const-string v7, ".............run()LockScreenStatusInfo.ONTRIGGER_COOL_VOICE"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.yulong.android.intent.action.coolvoice.receiver.wakeup"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 968
    .local v4, intentToCoolVoice:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 971
    .end local v4           #intentToCoolVoice:Landroid/content/Intent;
    :pswitch_6
    const-string v6, "LockScreen"

    const-string v7, ".............run()LockScreenStatusInfo.ONTRIGGER_BROWSER"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.yulong.android.intent.action.UNLOCKSCREEN_TO_BROWSER"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 973
    .local v2, intentToBrowser:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockScreen$SetTaskAfterUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 939
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
