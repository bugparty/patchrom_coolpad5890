.class Lcom/android/gallery3d/app/ab;
.super Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;
.source "SourceFile"


# instance fields
.field final synthetic gA:Lcom/android/gallery3d/app/DialogPicker;

.field final synthetic gz:Lcom/yulong/android/view/dialog/LoginDialog;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/DialogPicker;Lcom/yulong/android/view/dialog/LoginDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/gallery3d/app/ab;->gA:Lcom/android/gallery3d/app/DialogPicker;

    iput-object p2, p0, Lcom/android/gallery3d/app/ab;->gz:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-direct {p0}, Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstButtonClick(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;->onFirstButtonClick(Landroid/view/View;)I

    move-result v0

    .line 97
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/app/ab;->gA:Lcom/android/gallery3d/app/DialogPicker;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/DialogPicker;->cu()V

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/app/ab;->gz:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 108
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/ab;->gz:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/app/ab;->gA:Lcom/android/gallery3d/app/DialogPicker;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/DialogPicker;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSecondButtonClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/app/ab;->gz:Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-virtual {v0}, Lcom/yulong/android/view/dialog/LoginDialog;->dismiss()V

    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/app/ab;->gA:Lcom/android/gallery3d/app/DialogPicker;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/DialogPicker;->finish()V

    .line 114
    return-void
.end method
