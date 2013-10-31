.class final Lcom/android/server/SystemDestroyWatchdog$DialogHandler;
.super Landroid/os/Handler;
.source "SystemDestroyWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemDestroyWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DialogHandler"
.end annotation


# static fields
.field public static final DIALOG_EVENT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemDestroyWatchdog;


# direct methods
.method public constructor <init>(Lcom/android/server/SystemDestroyWatchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/server/SystemDestroyWatchdog$DialogHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 310
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 313
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v6, :cond_1

    .line 315
    const-string v2, "SystemDestroy"

    const-string v3, "DialogHandler DIALOG_EVENT..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v2, "Total TestTime = %d\nFailureTimes = %d\nFailure Probability = %d\nSystem partition FileNum is %d at firsttime! But now is %d!\nFileNums When System BootInit %d!"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/SystemDestroyWatchdog$DialogHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    #getter for: Lcom/android/server/SystemDestroyWatchdog;->mTotalTestTimes:I
    invoke-static {v4}, Lcom/android/server/SystemDestroyWatchdog;->access$500(Lcom/android/server/SystemDestroyWatchdog;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/server/SystemDestroyWatchdog$DialogHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    #getter for: Lcom/android/server/SystemDestroyWatchdog;->mFailureTimes:I
    invoke-static {v4}, Lcom/android/server/SystemDestroyWatchdog;->access$400(Lcom/android/server/SystemDestroyWatchdog;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/server/SystemDestroyWatchdog$DialogHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    #getter for: Lcom/android/server/SystemDestroyWatchdog;->mFailureTimes:I
    invoke-static {v5}, Lcom/android/server/SystemDestroyWatchdog;->access$400(Lcom/android/server/SystemDestroyWatchdog;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x64

    iget-object v6, p0, Lcom/android/server/SystemDestroyWatchdog$DialogHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    #getter for: Lcom/android/server/SystemDestroyWatchdog;->mTotalTestTimes:I
    invoke-static {v6}, Lcom/android/server/SystemDestroyWatchdog;->access$500(Lcom/android/server/SystemDestroyWatchdog;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/server/SystemDestroyWatchdog$DialogHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    #getter for: Lcom/android/server/SystemDestroyWatchdog;->mTotalFileNums:J
    invoke-static {v5}, Lcom/android/server/SystemDestroyWatchdog;->access$600(Lcom/android/server/SystemDestroyWatchdog;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/server/SystemDestroyWatchdog$DialogHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    #getter for: Lcom/android/server/SystemDestroyWatchdog;->mNowFileNums:J
    invoke-static {v5}, Lcom/android/server/SystemDestroyWatchdog;->access$700(Lcom/android/server/SystemDestroyWatchdog;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/server/SystemDestroyWatchdog$DialogHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    #getter for: Lcom/android/server/SystemDestroyWatchdog;->mNowNumsOnBoot:J
    invoke-static {v5}, Lcom/android/server/SystemDestroyWatchdog;->access$800(Lcom/android/server/SystemDestroyWatchdog;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, message:Ljava/lang/String;
    monitor-enter p0

    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SystemDestroyWatchdog$DialogHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    #getter for: Lcom/android/server/SystemDestroyWatchdog;->mTempDlg:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/SystemDestroyWatchdog;->access$900(Lcom/android/server/SystemDestroyWatchdog;)Landroid/app/AlertDialog;

    move-result-object v2

    if-nez v2, :cond_0

    .line 328
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/SystemDestroyWatchdog$DialogHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    iget-object v3, v3, Lcom/android/server/SystemDestroyWatchdog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "System Partition Destroy!"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080030

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/server/SystemDestroyWatchdog$DialogHandler$1;

    invoke-direct {v4, p0}, Lcom/android/server/SystemDestroyWatchdog$DialogHandler$1;-><init>(Lcom/android/server/SystemDestroyWatchdog$DialogHandler;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 340
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 341
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 342
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 343
    iget-object v2, p0, Lcom/android/server/SystemDestroyWatchdog$DialogHandler;->this$0:Lcom/android/server/SystemDestroyWatchdog;

    #setter for: Lcom/android/server/SystemDestroyWatchdog;->mTempDlg:Landroid/app/AlertDialog;
    invoke-static {v2, v0}, Lcom/android/server/SystemDestroyWatchdog;->access$902(Lcom/android/server/SystemDestroyWatchdog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 345
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    monitor-exit p0

    .line 347
    .end local v1           #message:Ljava/lang/String;
    :cond_1
    return-void

    .line 345
    .restart local v1       #message:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
