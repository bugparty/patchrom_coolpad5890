.class Lcom/android/gallery3d/ui/dk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Bu:Lcom/android/gallery3d/ui/dk;


# instance fields
.field private Bv:Lcom/android/gallery3d/ui/am;

.field private Bw:I

.field private Bx:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/android/gallery3d/ui/dk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/dk;-><init>(Lcom/android/gallery3d/ui/am;)V

    sput-object v0, Lcom/android/gallery3d/ui/dk;->Bu:Lcom/android/gallery3d/ui/dk;

    return-void
.end method

.method private constructor <init>(Lcom/android/gallery3d/ui/am;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/gallery3d/ui/dk;->Bv:Lcom/android/gallery3d/ui/am;

    .line 32
    return-void
.end method

.method private static C(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 54
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 57
    :goto_0
    return p1

    :sswitch_0
    move p1, v0

    .line 55
    goto :goto_0

    .line 56
    :sswitch_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 54
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static e(Lcom/android/gallery3d/ui/am;)Lcom/android/gallery3d/ui/dk;
    .locals 1
    .parameter

    .prologue
    .line 35
    sget-object v0, Lcom/android/gallery3d/ui/dk;->Bu:Lcom/android/gallery3d/ui/dk;

    iput-object p0, v0, Lcom/android/gallery3d/ui/dk;->Bv:Lcom/android/gallery3d/ui/am;

    .line 36
    sget-object v0, Lcom/android/gallery3d/ui/dk;->Bu:Lcom/android/gallery3d/ui/dk;

    return-object v0
.end method


# virtual methods
.method public B(II)Lcom/android/gallery3d/ui/dk;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/android/gallery3d/ui/dk;->Bw:I

    .line 41
    iput p2, p0, Lcom/android/gallery3d/ui/dk;->Bx:I

    .line 42
    return-object p0
.end method

.method public measure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/gallery3d/ui/dk;->Bv:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/am;->cq()Landroid/graphics/Rect;

    move-result-object v0

    .line 47
    iget v1, p0, Lcom/android/gallery3d/ui/dk;->Bw:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/android/gallery3d/ui/dk;->C(II)I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/ui/dk;->Bx:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-static {p2, v0}, Lcom/android/gallery3d/ui/dk;->C(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/ui/dk;->o(II)V

    .line 50
    return-void
.end method

.method protected o(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/ui/dk;->Bv:Lcom/android/gallery3d/ui/am;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/am;->o(II)V

    .line 63
    return-void
.end method
