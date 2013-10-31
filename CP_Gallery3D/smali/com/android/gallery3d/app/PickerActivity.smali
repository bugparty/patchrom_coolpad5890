.class public Lcom/android/gallery3d/app/PickerActivity;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final gI:Ljava/lang/String; = "album-path"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PickerActivity;->cA()Lcom/android/gallery3d/ui/eh;

    move-result-object v1

    .line 84
    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fY()V

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PickerActivity;->dO()Lcom/android/gallery3d/app/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/k;->aj()Lcom/android/gallery3d/app/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/w;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fZ()V

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/android/gallery3d/ui/eh;->fZ()V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a000c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PickerActivity;->finish()V

    .line 95
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/PickerActivity;->requestWindowFeature(I)Z

    .line 46
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/PickerActivity;->requestWindowFeature(I)Z

    .line 49
    :cond_0
    const v1, 0x7f04000a

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/PickerActivity;->setContentView(I)V

    .line 51
    if-eqz v0, :cond_1

    .line 54
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRootView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLRootView;->setZOrderOnTop(Z)V

    .line 62
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PickerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 67
    const v1, 0x7f10000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0055

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PickerActivity;->finish()V

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
