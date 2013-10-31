.class public Lcom/android/gallery3d/photoeditor/filters/FlipFilter;
.super Lcom/android/gallery3d/photoeditor/filters/Filter;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final Ai:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->b(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/filters/Filter;-><init>()V

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->Ai:[Z

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/photoeditor/aj;Lcom/android/gallery3d/photoeditor/aj;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 42
    const-string v0, "android.media.effect.effects.FlipEffect"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->y(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v0

    .line 43
    const-string v1, "horizontal"

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->Ai:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    const-string v1, "vertical"

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->Ai:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

.method public c(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->Ai:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->Ai:[Z

    const/4 v1, 0x1

    aput-boolean p2, v0, v1

    .line 37
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->validate()V

    .line 38
    return-void
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->Ai:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 56
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->Ai:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 51
    return-void
.end method
