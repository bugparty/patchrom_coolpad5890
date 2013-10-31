.class public Lcom/android/gallery3d/app/DialogPicker;
.super Lcom/android/gallery3d/app/PickerActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogPicker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/gallery3d/app/PickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public bq()Z
    .locals 5

    .prologue
    .line 79
    const-string v0, "DialogPicker"

    const-string v1, "enter getPassword() "

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/y;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v1, 0x0

    .line 82
    const-string v0, "coolpadSystem"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/DialogPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulong/android/server/systeminterface/SystemManager;

    .line 83
    invoke-virtual {v0}, Lcom/yulong/android/server/systeminterface/SystemManager;->getAppsSelected()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 85
    const-string v3, "com.android.gallery3d"

    .line 86
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 88
    if-ltz v0, :cond_0

    .line 89
    new-instance v1, Lcom/yulong/android/view/dialog/LoginDialog;

    invoke-direct {v1, p0}, Lcom/yulong/android/view/dialog/LoginDialog;-><init>(Landroid/content/Context;)V

    .line 90
    const v0, 0x7f0d00dc

    invoke-virtual {v1, v0}, Lcom/yulong/android/view/dialog/LoginDialog;->setTitle(I)V

    .line 91
    invoke-virtual {v1}, Lcom/yulong/android/view/dialog/LoginDialog;->show()V

    .line 92
    const/4 v0, 0x1

    .line 93
    new-instance v2, Lcom/android/gallery3d/app/ab;

    invoke-direct {v2, p0, v1}, Lcom/android/gallery3d/app/ab;-><init>(Lcom/android/gallery3d/app/DialogPicker;Lcom/yulong/android/view/dialog/LoginDialog;)V

    invoke-virtual {v1, v2}, Lcom/yulong/android/view/dialog/LoginDialog;->setLoginListener(Lcom/yulong/android/view/dialog/LoginDialog$LoginListener;)V

    .line 118
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public cu()V
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/gallery3d/b/y;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    .line 62
    invoke-static {v1}, Lcom/android/gallery3d/b/y;->aW(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/DialogPicker;->setTitle(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 65
    if-nez v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    :goto_0
    const-string v2, "get-content"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    const-string v2, "media-path"

    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->du()Lcom/android/gallery3d/a/ao;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/gallery3d/a/ao;->ai(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/ak;

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/k;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 71
    return-void

    .line 65
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/PickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->bq()Z

    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/android/gallery3d/app/DialogPicker;->cu()V

    .line 54
    :cond_0
    return-void
.end method
