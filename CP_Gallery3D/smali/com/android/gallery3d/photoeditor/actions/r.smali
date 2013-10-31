.class final Lcom/android/gallery3d/photoeditor/actions/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ag(I)[Lcom/android/gallery3d/photoeditor/actions/Doodle;
    .locals 1
    .parameter

    .prologue
    .line 120
    new-array v0, p1, [Lcom/android/gallery3d/photoeditor/actions/Doodle;

    return-object v0
.end method

.method public b(Landroid/os/Parcel;)Lcom/android/gallery3d/photoeditor/actions/Doodle;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    if-lez v3, :cond_1

    .line 109
    new-instance v1, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v0}, Lcom/android/gallery3d/photoeditor/actions/Doodle;-><init>(ILandroid/graphics/PointF;)V

    .line 110
    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    .line 111
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->c(Landroid/graphics/PointF;)Z

    .line 110
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 115
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v2, v1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;-><init>(ILandroid/graphics/PointF;)V

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/r;->b(Landroid/os/Parcel;)Lcom/android/gallery3d/photoeditor/actions/Doodle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/photoeditor/actions/r;->ag(I)[Lcom/android/gallery3d/photoeditor/actions/Doodle;

    move-result-object v0

    return-object v0
.end method
