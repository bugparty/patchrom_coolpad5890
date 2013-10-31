.class public Lcom/android/gallery3d/app/MyGifView;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyGifView"


# instance fields
.field private dY:Lcom/android/gallery3d/app/al;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MyGifView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 43
    :cond_0
    new-instance v1, Lcom/android/gallery3d/app/al;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/app/al;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/MyGifView;->dY:Lcom/android/gallery3d/app/al;

    .line 44
    iget-object v0, p0, Lcom/android/gallery3d/app/MyGifView;->dY:Lcom/android/gallery3d/app/al;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MyGifView;->setContentView(Landroid/view/View;)V

    .line 45
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 50
    return-void
.end method
