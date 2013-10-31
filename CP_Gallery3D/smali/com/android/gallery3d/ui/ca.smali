.class public Lcom/android/gallery3d/ui/ca;
.super Lcom/android/gallery3d/ui/ew;
.source "SourceFile"


# instance fields
.field private iG:Lcom/android/gallery3d/ui/ev;

.field private ui:Lcom/android/gallery3d/a/dd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/ui/ev;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ew;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/android/gallery3d/ui/ca;->iG:Lcom/android/gallery3d/ui/ev;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/ar;IIILcom/android/gallery3d/a/dd;IIZIZZ)V
    .locals 9
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
    .line 41
    neg-int v1, p3

    div-int/lit8 v3, v1, 0x2

    .line 42
    neg-int v1, p4

    div-int/lit8 v4, v1, 0x2

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 44
    invoke-static/range {v1 .. v7}, Lcom/android/gallery3d/ui/ca;->a(Lcom/android/gallery3d/ui/b;Lcom/android/gallery3d/ui/ar;IIIII)V

    .line 46
    div-int/lit8 v1, p5, 0x5a

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 50
    neg-int v1, p4

    div-int/lit8 v5, v1, 0x2

    .line 51
    neg-int v1, p3

    div-int/lit8 v6, v1, 0x2

    move v8, p3

    move v7, p4

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p8

    move/from16 v4, p9

    .line 54
    invoke-virtual/range {v1 .. v8}, Lcom/android/gallery3d/ui/ca;->a(Lcom/android/gallery3d/ui/b;IZIIII)V

    .line 55
    move/from16 v0, p10

    invoke-virtual {p0, p1, v7, v8, v0}, Lcom/android/gallery3d/ui/ca;->b(Lcom/android/gallery3d/ui/b;III)V

    .line 56
    move/from16 v0, p7

    invoke-virtual {p0, p1, v7, v8, v0}, Lcom/android/gallery3d/ui/ca;->a(Lcom/android/gallery3d/ui/b;III)Lcom/android/gallery3d/ui/bc;

    .line 58
    iget-object v1, p0, Lcom/android/gallery3d/ui/ca;->iG:Lcom/android/gallery3d/ui/ev;

    invoke-virtual {v1, p6}, Lcom/android/gallery3d/ui/ev;->o(Lcom/android/gallery3d/a/dd;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v3, p0

    move-object v4, p1

    .line 59
    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/ui/ca;->d(Lcom/android/gallery3d/ui/b;IIII)V

    .line 63
    :cond_0
    :goto_1
    return-void

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/ca;->ui:Lcom/android/gallery3d/a/dd;

    if-ne p6, v1, :cond_0

    move-object v3, p0

    move-object v4, p1

    .line 61
    invoke-virtual/range {v3 .. v8}, Lcom/android/gallery3d/ui/ca;->e(Lcom/android/gallery3d/ui/b;IIII)V

    goto :goto_1

    :cond_2
    move v6, v4

    move v5, v3

    move v8, p4

    move v7, p3

    goto :goto_0
.end method

.method public p(Lcom/android/gallery3d/a/dd;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/gallery3d/ui/ca;->ui:Lcom/android/gallery3d/a/dd;

    .line 34
    return-void
.end method
