.class public Lcom/android/gallery3d/photoeditor/filters/GrayscaleFilter;
.super Lcom/android/gallery3d/photoeditor/filters/Filter;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/GrayscaleFilter;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/filters/GrayscaleFilter;->b(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/photoeditor/filters/GrayscaleFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/filters/Filter;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/filters/GrayscaleFilter;->validate()V

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/photoeditor/aj;Lcom/android/gallery3d/photoeditor/aj;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 36
    const-string v0, "android.media.effect.effects.GrayscaleEffect"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/filters/GrayscaleFilter;->y(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->ei()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->height()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/gallery3d/photoeditor/aj;->ei()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 38
    return-void
.end method
