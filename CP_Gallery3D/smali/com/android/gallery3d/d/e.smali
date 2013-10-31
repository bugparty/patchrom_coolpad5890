.class public Lcom/android/gallery3d/d/e;
.super Lcom/android/gallery3d/d/c;
.source "SourceFile"


# instance fields
.field private final GS:Ljava/util/ArrayList;

.field private It:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/gallery3d/d/c;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/d/e;->GS:Ljava/util/ArrayList;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/d/e;->It:I

    return-void
.end method


# virtual methods
.method protected b(F)V
    .locals 0
    .parameter

    .prologue
    .line 50
    return-void
.end method

.method public c(Lcom/android/gallery3d/d/c;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/gallery3d/d/e;->GS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget v0, p0, Lcom/android/gallery3d/d/e;->It:I

    invoke-virtual {p1}, Lcom/android/gallery3d/d/c;->dd()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/d/e;->It:I

    .line 33
    return-void
.end method

.method public dd()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/gallery3d/d/e;->It:I

    return v0
.end method

.method public h(J)Z
    .locals 3
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/android/gallery3d/d/e;->GS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/d/c;

    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/d/c;->h(J)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 58
    :cond_0
    return v1
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/d/e;->GS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/d/c;

    .line 71
    invoke-virtual {v0}, Lcom/android/gallery3d/d/c;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l(Lcom/android/gallery3d/ui/b;)V
    .locals 3
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/d/e;->GS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/gallery3d/d/e;->GS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/d/c;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/d/c;->l(Lcom/android/gallery3d/ui/b;)V

    .line 37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/d/e;->GS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/d/c;

    .line 64
    invoke-virtual {v0}, Lcom/android/gallery3d/d/c;->start()V

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method
