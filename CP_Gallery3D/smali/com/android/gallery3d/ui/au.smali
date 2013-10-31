.class public Lcom/android/gallery3d/ui/au;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public rotation:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 742
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 743
    iput-object p1, p0, Lcom/android/gallery3d/ui/au;->bitmap:Landroid/graphics/Bitmap;

    .line 744
    iput p2, p0, Lcom/android/gallery3d/ui/au;->rotation:I

    .line 745
    return-void
.end method
