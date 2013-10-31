.class Lcom/android/gallery3d/app/cw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/a;


# instance fields
.field final synthetic oy:Lcom/android/gallery3d/app/CropImage;

.field final synthetic zP:Lcom/android/gallery3d/b/ac;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/b/ac;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/gallery3d/app/cw;->oy:Lcom/android/gallery3d/app/CropImage;

    iput-object p2, p0, Lcom/android/gallery3d/app/cw;->zP:Lcom/android/gallery3d/b/ac;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/gallery3d/app/cw;->zP:Lcom/android/gallery3d/b/ac;

    invoke-virtual {v0}, Lcom/android/gallery3d/b/ac;->interrupt()V

    .line 594
    return-void
.end method
