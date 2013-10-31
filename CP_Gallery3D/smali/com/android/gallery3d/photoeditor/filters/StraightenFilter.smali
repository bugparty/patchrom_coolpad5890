.class public Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;
.super Lcom/android/gallery3d/photoeditor/filters/Filter;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field public static final rM:F = 30.0f


# instance fields
.field private mp:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->b(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/filters/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/photoeditor/aj;Lcom/android/gallery3d/photoeditor/aj;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 42
    const-string v0, "android.media.effect.effects.StraightenEffect"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->y(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v0

    .line 43
    const-string v1, "maxAngle"

    const/high16 v2, 0x41f0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    const-string v1, "angle"

    iget v2, p0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->mp:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->ei()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->height()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/gallery3d/photoeditor/aj;->ei()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 46
    return-void
.end method

.method public h(F)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput p1, p0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->mp:F

    .line 37
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->validate()V

    .line 38
    return-void
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->mp:F

    .line 56
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->mp:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 51
    return-void
.end method
