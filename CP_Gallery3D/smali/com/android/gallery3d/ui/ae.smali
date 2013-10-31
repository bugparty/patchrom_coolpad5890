.class public Lcom/android/gallery3d/ui/ae;
.super Lcom/android/gallery3d/ui/ew;
.source "SourceFile"


# instance fields
.field private final iG:Lcom/android/gallery3d/ui/ev;

.field private final iZ:Lcom/android/gallery3d/ui/bm;

.field private final ja:Lcom/android/gallery3d/ui/bm;

.field private final jb:Lcom/android/gallery3d/ui/bm;

.field private final jc:Lcom/android/gallery3d/ui/e;

.field private final jd:I

.field private final je:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/ev;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ew;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/android/gallery3d/ui/bm;

    const v1, 0x7f02000b

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ae;->iZ:Lcom/android/gallery3d/ui/bm;

    .line 40
    new-instance v0, Lcom/android/gallery3d/ui/bm;

    const v1, 0x7f02000a

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ae;->ja:Lcom/android/gallery3d/ui/bm;

    .line 41
    new-instance v0, Lcom/android/gallery3d/ui/bm;

    const v1, 0x7f020009

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/bm;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ae;->jb:Lcom/android/gallery3d/ui/bm;

    .line 42
    const v0, 0x7f0d0059

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    const/high16 v1, 0x4140

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/e;->a(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/ae;->jc:Lcom/android/gallery3d/ui/e;

    .line 44
    iput-object p2, p0, Lcom/android/gallery3d/ui/ae;->iG:Lcom/android/gallery3d/ui/ev;

    .line 45
    iput p3, p0, Lcom/android/gallery3d/ui/ae;->jd:I

    .line 46
    iput p4, p0, Lcom/android/gallery3d/ui/ae;->je:I

    .line 47
    return-void
.end method

.method private static S(I)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/a/dd;IZZII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    .line 104
    invoke-static {p3}, Lcom/android/gallery3d/ui/ae;->S(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/ui/ae;->jb:Lcom/android/gallery3d/ui/bm;

    .line 112
    :goto_0
    iget v4, p0, Lcom/android/gallery3d/ui/ae;->jd:I

    .line 113
    iget v5, p0, Lcom/android/gallery3d/ui/ae;->jd:I

    .line 114
    add-int/lit8 v1, p6, 0x1

    div-int/lit8 v6, v1, 0x2

    .line 115
    add-int/lit8 v1, p7, 0x1

    div-int/lit8 v7, v1, 0x2

    .line 116
    sub-int v1, v6, v4

    iget v2, p0, Lcom/android/gallery3d/ui/ae;->je:I

    sub-int v2, v1, v2

    .line 117
    sub-int v1, v7, v5

    iget v3, p0, Lcom/android/gallery3d/ui/ae;->je:I

    sub-int v3, v1, v3

    move-object v1, p1

    .line 119
    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/bm;->a(Lcom/android/gallery3d/ui/b;IIII)V

    .line 121
    if-eqz p4, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/gallery3d/ui/ae;->jc:Lcom/android/gallery3d/ui/e;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/e;->getWidth()I

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/android/gallery3d/ui/ae;->jc:Lcom/android/gallery3d/ui/e;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/e;->getHeight()I

    move-result v1

    .line 125
    iget v2, p0, Lcom/android/gallery3d/ui/ae;->je:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/gallery3d/ui/ae;->jd:I

    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    .line 126
    sub-int v1, v7, v1

    .line 127
    iget-object v2, p0, Lcom/android/gallery3d/ui/ae;->jc:Lcom/android/gallery3d/ui/e;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/gallery3d/ui/e;->b(Lcom/android/gallery3d/ui/b;II)V

    .line 129
    :cond_0
    return-void

    .line 106
    :cond_1
    if-eqz p5, :cond_2

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/ui/ae;->iZ:Lcom/android/gallery3d/ui/bm;

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/ae;->ja:Lcom/android/gallery3d/ui/bm;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/b;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    return-void
.end method

.method public a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/ar;IIILcom/android/gallery3d/a/dd;IIZIZZ)V
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/ae;->iG:Lcom/android/gallery3d/ui/ev;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/ev;->t(Lcom/android/gallery3d/a/dd;)Z

    move-result v3

    .line 64
    xor-int v16, p11, v3

    .line 65
    invoke-static/range {p7 .. p7}, Lcom/android/gallery3d/ui/ae;->S(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v16, :cond_4

    :cond_0
    const/4 v3, 0x1

    move v10, v3

    .line 67
    :goto_0
    move/from16 v0, p3

    neg-int v3, v0

    div-int/lit8 v5, v3, 0x2

    .line 68
    move/from16 v0, p4

    neg-int v3, v0

    div-int/lit8 v6, v3, 0x2

    .line 70
    if-nez v10, :cond_1

    .line 71
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/b;->save(I)I

    .line 72
    const v3, 0x3f19999a

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/android/gallery3d/ui/b;->a(F)V

    :cond_1
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 75
    invoke-static/range {v3 .. v9}, Lcom/android/gallery3d/ui/ae;->a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/ar;IIIII)V

    .line 77
    if-nez v10, :cond_2

    .line 78
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/b;->restore()V

    .line 81
    :cond_2
    div-int/lit8 v3, p5, 0x5a

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 85
    move/from16 v0, p4

    neg-int v3, v0

    div-int/lit8 v7, v3, 0x2

    .line 86
    move/from16 v0, p3

    neg-int v3, v0

    div-int/lit8 v8, v3, 0x2

    move/from16 v10, p3

    move/from16 v9, p4

    :goto_1
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p8

    move/from16 v6, p9

    .line 89
    invoke-virtual/range {v3 .. v10}, Lcom/android/gallery3d/ui/ae;->a(Lcom/android/gallery3d/ui/b;IZIIII)V

    .line 90
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p10

    invoke-virtual {v0, v1, v9, v10, v2}, Lcom/android/gallery3d/ui/ae;->b(Lcom/android/gallery3d/ui/b;III)V

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p7

    invoke-virtual {v0, v1, v9, v10, v2}, Lcom/android/gallery3d/ui/ae;->a(Lcom/android/gallery3d/ui/b;III)Lcom/android/gallery3d/ui/bc;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p12

    move/from16 v17, v9

    move/from16 v18, v10

    .line 92
    invoke-direct/range {v11 .. v18}, Lcom/android/gallery3d/ui/ae;->a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/a/dd;IZZII)V

    .line 95
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/ae;->iG:Lcom/android/gallery3d/ui/ev;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/ev;->o(Lcom/android/gallery3d/a/dd;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 96
    invoke-virtual/range {v5 .. v10}, Lcom/android/gallery3d/ui/ae;->d(Lcom/android/gallery3d/ui/b;IIII)V

    .line 98
    :cond_3
    return-void

    .line 65
    :cond_4
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_0

    :cond_5
    move v8, v6

    move v7, v5

    move/from16 v10, p4

    move/from16 v9, p3

    goto :goto_1
.end method

.method public aV()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
