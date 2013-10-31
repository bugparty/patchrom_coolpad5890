.class public Lcom/android/gallery3d/app/ck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public index:I

.field public yF:Lcom/android/gallery3d/a/ax;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/ax;ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p3, p0, Lcom/android/gallery3d/app/ck;->bitmap:Landroid/graphics/Bitmap;

    .line 79
    iput-object p1, p0, Lcom/android/gallery3d/app/ck;->yF:Lcom/android/gallery3d/a/ax;

    .line 80
    iput p2, p0, Lcom/android/gallery3d/app/ck;->index:I

    .line 81
    return-void
.end method
