.class public Lcom/android/gallery3d/gadget/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public pI:I

.field public pJ:Ljava/lang/String;

.field public pK:[B

.field public pL:Ljava/lang/String;

.field public type:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(ILandroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/android/gallery3d/gadget/b;->pI:I

    .line 71
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/gadget/b;->type:I

    .line 72
    iget v0, p0, Lcom/android/gallery3d/gadget/b;->type:I

    if-nez v0, :cond_1

    .line 73
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/b;->pJ:Ljava/lang/String;

    .line 74
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/b;->pK:[B

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/gadget/b;->type:I

    if-ne v0, v1, :cond_0

    .line 76
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/gadget/b;->pL:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(ILandroid/database/Cursor;Lcom/android/gallery3d/gadget/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/gadget/b;-><init>(ILandroid/database/Cursor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/gadget/c;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/gallery3d/gadget/b;-><init>()V

    return-void
.end method
