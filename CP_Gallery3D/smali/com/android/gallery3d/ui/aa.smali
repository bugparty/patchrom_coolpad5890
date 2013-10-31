.class Lcom/android/gallery3d/ui/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final hS:I = 0x1

.field public static final hT:I


# instance fields
.field public hU:Landroid/graphics/Rect;

.field public hV:[I

.field public hW:[I

.field public hX:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/aa;->hU:Landroid/graphics/Rect;

    return-void
.end method

.method private static G(I)V
    .locals 3
    .parameter

    .prologue
    .line 44
    if-eqz p0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid nine-patch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    return-void
.end method

.method public static a([B)Lcom/android/gallery3d/ui/aa;
    .locals 4
    .parameter

    .prologue
    .line 50
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 54
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lcom/android/gallery3d/ui/aa;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/aa;-><init>()V

    .line 57
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/android/gallery3d/ui/aa;->hV:[I

    .line 58
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/android/gallery3d/ui/aa;->hW:[I

    .line 59
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/android/gallery3d/ui/aa;->hX:[I

    .line 61
    iget-object v2, v0, Lcom/android/gallery3d/ui/aa;->hV:[I

    array-length v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/ui/aa;->G(I)V

    .line 62
    iget-object v2, v0, Lcom/android/gallery3d/ui/aa;->hW:[I

    array-length v2, v2

    invoke-static {v2}, Lcom/android/gallery3d/ui/aa;->G(I)V

    .line 65
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 66
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 68
    iget-object v2, v0, Lcom/android/gallery3d/ui/aa;->hU:Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 69
    iget-object v2, v0, Lcom/android/gallery3d/ui/aa;->hU:Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 70
    iget-object v2, v0, Lcom/android/gallery3d/ui/aa;->hU:Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 71
    iget-object v2, v0, Lcom/android/gallery3d/ui/aa;->hU:Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 74
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 76
    iget-object v2, v0, Lcom/android/gallery3d/ui/aa;->hV:[I

    invoke-static {v2, v1}, Lcom/android/gallery3d/ui/aa;->a([ILjava/nio/ByteBuffer;)V

    .line 77
    iget-object v2, v0, Lcom/android/gallery3d/ui/aa;->hW:[I

    invoke-static {v2, v1}, Lcom/android/gallery3d/ui/aa;->a([ILjava/nio/ByteBuffer;)V

    .line 78
    iget-object v2, v0, Lcom/android/gallery3d/ui/aa;->hX:[I

    invoke-static {v2, v1}, Lcom/android/gallery3d/ui/aa;->a([ILjava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private static a([ILjava/nio/ByteBuffer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, p0, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method
