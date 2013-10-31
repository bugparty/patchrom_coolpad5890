.class public Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;
.super Lcom/android/gallery3d/photoeditor/filters/Filter;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final iY:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->b(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/filters/Filter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->iY:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/photoeditor/aj;Lcom/android/gallery3d/photoeditor/aj;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    .line 47
    const-string v0, "android.media.effect.effects.RedEyeEffect"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->y(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v2

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->iY:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [F

    .line 49
    const/4 v0, 0x0

    .line 50
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->iY:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 51
    add-int/lit8 v5, v1, 0x1

    iget v6, v0, Landroid/graphics/PointF;->x:F

    aput v6, v3, v1

    .line 52
    add-int/lit8 v1, v5, 0x1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    aput v0, v3, v5

    goto :goto_0

    .line 54
    :cond_0
    const-string v0, "centers"

    invoke-virtual {v2, v0, v3}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->width()I

    move-result v0

    if-le v0, v7, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->height()I

    move-result v0

    if-le v0, v7, :cond_1

    .line 57
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->ei()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->height()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/gallery3d/photoeditor/aj;->ei()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 59
    :cond_1
    return-void
.end method

.method public d(Landroid/graphics/PointF;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->iY:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->validate()V

    .line 43
    return-void
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 72
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 73
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->iY:Ljava/util/Vector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->iY:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/RedEyeFilter;->iY:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 65
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method
