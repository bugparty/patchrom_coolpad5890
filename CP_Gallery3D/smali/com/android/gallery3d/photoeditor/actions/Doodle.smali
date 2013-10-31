.class public Lcom/android/gallery3d/photoeditor/actions/Doodle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final color:I

.field private final gG:Landroid/graphics/Path;

.field private final gH:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/r;

    invoke-direct {v0}, Lcom/android/gallery3d/photoeditor/actions/r;-><init>()V

    sput-object v0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/PointF;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->gG:Landroid/graphics/Path;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->gH:Ljava/util/Vector;

    .line 52
    const/16 v0, 0xc0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->color:I

    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->gG:Landroid/graphics/Path;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->gH:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public static aX()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 44
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 46
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 47
    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->gG:Landroid/graphics/Path;

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 85
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 86
    return-void
.end method

.method public c(Landroid/graphics/PointF;)Z
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x4000

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->gH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 64
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->gG:Landroid/graphics/Path;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    div-float/2addr v4, v8

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v5

    div-float/2addr v0, v8

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->gH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->gG:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 69
    invoke-virtual {v0, v6, v6, v7, v7}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->color:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->gG:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->gH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/Doodle;->gH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 98
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method
