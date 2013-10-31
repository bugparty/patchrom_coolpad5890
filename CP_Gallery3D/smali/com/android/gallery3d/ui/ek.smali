.class public Lcom/android/gallery3d/ui/ek;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Gw:Ljava/util/WeakHashMap;


# instance fields
.field private BL:I

.field private Gx:I

.field private dZ:Lcom/android/gallery3d/ui/cq;

.field private mData:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/ek;->Gw:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ek;->mData:Ljava/util/HashMap;

    .line 112
    new-instance v0, Lcom/android/gallery3d/ui/cq;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/cq;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/ek;->dZ:Lcom/android/gallery3d/ui/cq;

    return-void
.end method

.method public static a(Lcom/android/gallery3d/app/bm;)Lcom/android/gallery3d/ui/ek;
    .locals 2
    .parameter

    .prologue
    .line 101
    sget-object v0, Lcom/android/gallery3d/ui/ek;->Gw:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/ek;

    .line 102
    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/android/gallery3d/ui/ek;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ek;-><init>()V

    .line 104
    sget-object v1, Lcom/android/gallery3d/ui/ek;->Gw:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    return-object v0
.end method


# virtual methods
.method public F(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput p1, p0, Lcom/android/gallery3d/ui/ek;->BL:I

    .line 126
    iput p2, p0, Lcom/android/gallery3d/ui/ek;->Gx:I

    .line 127
    return-void
.end method

.method public a(Ljava/lang/Long;)Lcom/android/gallery3d/ui/cq;
    .locals 3
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/gallery3d/ui/ek;->mData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/cq;

    .line 116
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/ek;->dZ:Lcom/android/gallery3d/ui/cq;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/cq;->a(Lcom/android/gallery3d/ui/cq;)V

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/ui/ek;->dZ:Lcom/android/gallery3d/ui/cq;

    .line 119
    iget v1, v0, Lcom/android/gallery3d/ui/cq;->x:F

    iget v2, p0, Lcom/android/gallery3d/ui/ek;->BL:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/ui/cq;->x:F

    .line 120
    iget v1, v0, Lcom/android/gallery3d/ui/cq;->y:F

    iget v2, p0, Lcom/android/gallery3d/ui/ek;->Gx:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/ui/cq;->y:F

    goto :goto_0
.end method

.method public a(Ljava/lang/Long;Lcom/android/gallery3d/ui/cq;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/cq;->eZ()Lcom/android/gallery3d/ui/cq;

    move-result-object v0

    .line 131
    iget v1, v0, Lcom/android/gallery3d/ui/cq;->x:F

    iget v2, p0, Lcom/android/gallery3d/ui/ek;->BL:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/ui/cq;->x:F

    .line 132
    iget v1, v0, Lcom/android/gallery3d/ui/cq;->y:F

    iget v2, p0, Lcom/android/gallery3d/ui/ek;->Gx:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/gallery3d/ui/cq;->y:F

    .line 133
    iget-object v1, p0, Lcom/android/gallery3d/ui/ek;->mData:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/ui/ek;->mData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 138
    return-void
.end method
