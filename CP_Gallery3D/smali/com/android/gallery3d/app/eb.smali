.class Lcom/android/gallery3d/app/eb;
.super Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;
.source "SourceFile"


# instance fields
.field final synthetic Fk:Lcom/android/gallery3d/app/Gallery;

.field final synthetic gz:Lcom/yulong/android/view/dialog/LoginDialog;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/Gallery;Lcom/yulong/android/view/dialog/LoginDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/gallery3d/app/eb;->Fk:Lcom/android/gallery3d/app/Gallery;

    iput-object p2, p0, Lcom/android/gallery3d/app/eb;->gz:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-direct {p0}, Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstButtonClick(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 630
    invoke-super {p0, p1}, Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;->onFirstButtonClick(Landroid/view/View;)I

    move-result v0

    .line 631
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 632
    iget-object v0, p0, Lcom/android/gallery3d/app/eb;->gz:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 641
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 633
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/eb;->gz:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 636
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSecondButtonClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/gallery3d/app/eb;->gz:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 646
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 647
    return-void
.end method
