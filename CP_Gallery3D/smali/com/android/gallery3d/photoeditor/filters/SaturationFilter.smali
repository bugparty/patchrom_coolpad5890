.class public Lcom/android/gallery3d/photoeditor/filters/SaturationFilter;
.super Lcom/android/gallery3d/photoeditor/filters/AbstractScaleFilter;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/gallery3d/photoeditor/filters/SaturationFilter;

    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/filters/SaturationFilter;->b(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/photoeditor/filters/SaturationFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/filters/AbstractScaleFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/photoeditor/aj;Lcom/android/gallery3d/photoeditor/aj;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 33
    const-string v0, "android.media.effect.effects.SaturateEffect"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/photoeditor/filters/SaturationFilter;->y(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v0

    .line 34
    const-string v1, "scale"

    iget v2, p0, Lcom/android/gallery3d/photoeditor/filters/AbstractScaleFilter;->jS:F

    const/high16 v3, 0x3f00

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->ei()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/aj;->height()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/gallery3d/photoeditor/aj;->ei()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 36
    return-void
.end method
