.class public Lcom/android/gallery3d/photoeditor/filters/TintFilter;
.super Lcom/android/gallery3d/photoeditor/filters/Filter;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private color:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/TintFilter;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/filters/TintFilter;->b(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/photoeditor/filters/TintFilter;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 41
    const-string v0, "android.media.effect.effects.TintEffect"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/filters/TintFilter;->y(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v0

    .line 42
    const-string v1, "tint"

    iget v2, p0, Lcom/android/gallery3d/photoeditor/filters/TintFilter;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->ei()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->height()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/gallery3d/photoeditor/aj;->ei()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 44
    return-void
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/filters/TintFilter;->color:I

    .line 54
    return-void
.end method

.method public v(I)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lcom/android/gallery3d/photoeditor/filters/TintFilter;->color:I

    .line 36
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/filters/TintFilter;->validate()V

    .line 37
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/android/gallery3d/photoeditor/filters/TintFilter;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
