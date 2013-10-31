.class public Lcom/android/gallery3d/photoeditor/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BA:Ljava/lang/String; = "applied_stack"

.field private static final BB:Ljava/lang/String; = "redo_stack"


# instance fields
.field private final BC:Ljava/util/Stack;

.field private final BD:Ljava/util/Stack;

.field private final BE:[Lcom/android/gallery3d/photoeditor/aj;

.field private final BF:Lcom/android/gallery3d/photoeditor/bd;

.field private BG:Lcom/android/gallery3d/photoeditor/aj;

.field private BH:Ljava/lang/Runnable;

.field private BI:Z

.field private final lY:Lcom/android/gallery3d/photoeditor/PhotoView;

.field private volatile paused:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoView;Lcom/android/gallery3d/photoeditor/bd;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BC:Ljava/util/Stack;

    .line 44
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BD:Ljava/util/Stack;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/gallery3d/photoeditor/aj;

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BE:[Lcom/android/gallery3d/photoeditor/aj;

    .line 57
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    .line 58
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/ap;->BF:Lcom/android/gallery3d/photoeditor/bd;

    .line 59
    if-eqz p3, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BC:Ljava/util/Stack;

    const-string v3, "applied_stack"

    invoke-direct {p0, p3, v3}, Lcom/android/gallery3d/photoeditor/ap;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BD:Ljava/util/Stack;

    const-string v3, "redo_stack"

    invoke-direct {p0, p3, v3}, Lcom/android/gallery3d/photoeditor/ap;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 62
    iput-boolean v1, p0, Lcom/android/gallery3d/photoeditor/ap;->BI:Z

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BC:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/ap;->BD:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-interface {p2, v0, v1}, Lcom/android/gallery3d/photoeditor/bd;->d(ZZ)V

    .line 65
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 63
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/ap;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/ap;->aO(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/aj;)Lcom/android/gallery3d/photoeditor/aj;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/ap;->BG:Lcom/android/gallery3d/photoeditor/aj;

    return-object p1
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/be;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/ap;->a(Lcom/android/gallery3d/photoeditor/be;)V

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/filters/Filter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/ap;->a(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    return-void
.end method

.method private a(Lcom/android/gallery3d/photoeditor/be;)V
    .locals 2
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/m;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/m;-><init>(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/be;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method private a(Lcom/android/gallery3d/photoeditor/filters/Filter;)V
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BC:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BI:Z

    .line 192
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/ap;->fC()V

    .line 193
    return-void
.end method

.method private aM(I)V
    .locals 4
    .parameter

    .prologue
    .line 78
    xor-int/lit8 v0, p1, 0x1

    .line 79
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/ap;->BE:[Lcom/android/gallery3d/photoeditor/aj;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/ap;->BE:[Lcom/android/gallery3d/photoeditor/aj;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/aj;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/ap;->BE:[Lcom/android/gallery3d/photoeditor/aj;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/aj;->height()I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/gallery3d/photoeditor/aj;->w(II)Lcom/android/gallery3d/photoeditor/aj;

    move-result-object v0

    aput-object v0, v1, p1

    .line 80
    return-void
.end method

.method private aN(I)Lcom/android/gallery3d/photoeditor/aj;
    .locals 4
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/gallery3d/photoeditor/ap;->aO(I)I

    move-result v2

    .line 114
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BE:[Lcom/android/gallery3d/photoeditor/aj;

    xor-int/lit8 v1, v2, 0x1

    aget-object v0, v0, v1

    move-object v1, v0

    .line 115
    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BE:[Lcom/android/gallery3d/photoeditor/aj;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BE:[Lcom/android/gallery3d/photoeditor/aj;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/aj;->a(Lcom/android/gallery3d/photoeditor/aj;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BE:[Lcom/android/gallery3d/photoeditor/aj;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/aj;->clear()V

    .line 118
    invoke-direct {p0, v2}, Lcom/android/gallery3d/photoeditor/ap;->aM(I)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BC:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/photoeditor/filters/Filter;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/ap;->BE:[Lcom/android/gallery3d/photoeditor/aj;

    aget-object v3, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/photoeditor/filters/Filter;->a(Lcom/android/gallery3d/photoeditor/aj;Lcom/android/gallery3d/photoeditor/aj;)V

    .line 121
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BE:[Lcom/android/gallery3d/photoeditor/aj;

    aget-object v0, v0, v2

    .line 123
    :goto_1
    return-object v0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BG:Lcom/android/gallery3d/photoeditor/aj;

    move-object v1, v0

    goto :goto_0

    .line 123
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private aO(I)I
    .locals 1
    .parameter

    .prologue
    .line 131
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static synthetic b(Lcom/android/gallery3d/photoeditor/ap;)Lcom/android/gallery3d/photoeditor/bd;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BF:Lcom/android/gallery3d/photoeditor/bd;

    return-object v0
.end method

.method static synthetic c(Lcom/android/gallery3d/photoeditor/ap;)Ljava/util/Stack;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BC:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic d(Lcom/android/gallery3d/photoeditor/ap;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BI:Z

    return v0
.end method

.method static synthetic e(Lcom/android/gallery3d/photoeditor/ap;)Lcom/android/gallery3d/photoeditor/aj;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BG:Lcom/android/gallery3d/photoeditor/aj;

    return-object v0
.end method

.method static synthetic f(Lcom/android/gallery3d/photoeditor/ap;)[Lcom/android/gallery3d/photoeditor/aj;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BE:[Lcom/android/gallery3d/photoeditor/aj;

    return-object v0
.end method

.method private fB()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BC:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iput-boolean v2, p0, Lcom/android/gallery3d/photoeditor/ap;->BI:Z

    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/ap;->BC:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/ap;->aN(I)Lcom/android/gallery3d/photoeditor/aj;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/photoeditor/PhotoView;->a(Lcom/android/gallery3d/photoeditor/aj;Z)V

    .line 110
    :cond_0
    return-void
.end method

.method private fC()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BC:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 148
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/ap;->BD:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v3, Lcom/android/gallery3d/photoeditor/q;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/gallery3d/photoeditor/q;-><init>(Lcom/android/gallery3d/photoeditor/ap;ZZ)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/photoeditor/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void

    :cond_0
    move v0, v2

    .line 147
    goto :goto_0

    :cond_1
    move v1, v2

    .line 148
    goto :goto_1
.end method

.method static synthetic g(Lcom/android/gallery3d/photoeditor/ap;)Lcom/android/gallery3d/photoeditor/PhotoView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    return-object v0
.end method

.method static synthetic h(Lcom/android/gallery3d/photoeditor/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/ap;->invalidate()V

    return-void
.end method

.method static synthetic i(Lcom/android/gallery3d/photoeditor/ap;)Ljava/util/Stack;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BD:Ljava/util/Stack;

    return-object v0
.end method

.method private invalidate()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 84
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/ap;->BE:[Lcom/android/gallery3d/photoeditor/aj;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/ap;->BE:[Lcom/android/gallery3d/photoeditor/aj;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/ap;->BE:[Lcom/android/gallery3d/photoeditor/aj;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/aj;->clear()V

    .line 87
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/ap;->BE:[Lcom/android/gallery3d/photoeditor/aj;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BG:Lcom/android/gallery3d/photoeditor/aj;

    if-eqz v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BE:[Lcom/android/gallery3d/photoeditor/aj;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/ap;->BG:Lcom/android/gallery3d/photoeditor/aj;

    invoke-virtual {v2}, Lcom/android/gallery3d/photoeditor/aj;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/ap;->BG:Lcom/android/gallery3d/photoeditor/aj;

    invoke-virtual {v3}, Lcom/android/gallery3d/photoeditor/aj;->height()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/photoeditor/aj;->w(II)Lcom/android/gallery3d/photoeditor/aj;

    move-result-object v2

    aput-object v2, v0, v1

    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/ap;->aM(I)V

    .line 95
    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/ap;->BG:Lcom/android/gallery3d/photoeditor/aj;

    .line 96
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BI:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BC:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 97
    :goto_1
    if-ge v1, v0, :cond_3

    iget-boolean v3, p0, Lcom/android/gallery3d/photoeditor/ap;->paused:Z

    if-nez v3, :cond_3

    .line 98
    invoke-direct {p0, v1}, Lcom/android/gallery3d/photoeditor/ap;->aN(I)Lcom/android/gallery3d/photoeditor/aj;

    move-result-object v2

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BC:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-boolean v1, p0, Lcom/android/gallery3d/photoeditor/ap;->BI:Z

    invoke-virtual {v0, v2, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->a(Lcom/android/gallery3d/photoeditor/aj;Z)V

    .line 103
    :cond_4
    return-void
.end method

.method static synthetic j(Lcom/android/gallery3d/photoeditor/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/ap;->fC()V

    return-void
.end method

.method static synthetic k(Lcom/android/gallery3d/photoeditor/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/gallery3d/photoeditor/ap;->fB()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/android/gallery3d/photoeditor/be;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/o;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/gallery3d/photoeditor/o;-><init>(Lcom/android/gallery3d/photoeditor/ap;Landroid/graphics/Bitmap;Lcom/android/gallery3d/photoeditor/be;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->e(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method public a(Lcom/android/gallery3d/photoeditor/x;)V
    .locals 2
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/p;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/p;-><init>(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/x;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->e(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method public b(Lcom/android/gallery3d/photoeditor/be;)V
    .locals 2
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/l;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/l;-><init>(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/be;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->e(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method

.method public b(Lcom/android/gallery3d/photoeditor/filters/Filter;)V
    .locals 2
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/n;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/n;-><init>(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->e(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public c(Lcom/android/gallery3d/photoeditor/be;)V
    .locals 2
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/k;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/k;-><init>(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/be;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->e(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public d(Lcom/android/gallery3d/photoeditor/be;)V
    .locals 2
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BH:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/ap;->BH:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->remove(Ljava/lang/Runnable;)V

    .line 242
    :cond_0
    new-instance v0, Lcom/android/gallery3d/photoeditor/j;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/j;-><init>(Lcom/android/gallery3d/photoeditor/ap;Lcom/android/gallery3d/photoeditor/be;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->BH:Ljava/lang/Runnable;

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/ap;->BH:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->e(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    const-string v0, "applied_stack"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/ap;->BC:Ljava/util/Stack;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 74
    const-string v0, "redo_stack"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/ap;->BD:Ljava/util/Stack;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 75
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/ap;->paused:Z

    .line 257
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->flush()V

    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    new-instance v1, Lcom/android/gallery3d/photoeditor/i;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/i;-><init>(Lcom/android/gallery3d/photoeditor/ap;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queueEvent(Ljava/lang/Runnable;)V

    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->onPause()V

    .line 272
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/ap;->lY:Lcom/android/gallery3d/photoeditor/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/PhotoView;->onResume()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/photoeditor/ap;->paused:Z

    .line 277
    return-void
.end method
