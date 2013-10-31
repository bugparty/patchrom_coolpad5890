.class public Lcom/android/gallery3d/ui/dn;
.super Lcom/android/gallery3d/d/d;
.source "SourceFile"


# instance fields
.field public value:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/android/gallery3d/d/d;-><init>()V

    .line 376
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4080

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/dn;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 377
    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/dn;->setDuration(I)V

    .line 378
    return-void
.end method


# virtual methods
.method protected b(F)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput p1, p0, Lcom/android/gallery3d/ui/dn;->value:F

    .line 383
    return-void
.end method
