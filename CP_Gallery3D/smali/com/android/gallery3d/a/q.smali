.class Lcom/android/gallery3d/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fC:I

.field private mMap:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/a/q;->fC:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/a/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/gallery3d/a/q;-><init>()V

    return-void
.end method


# virtual methods
.method aB()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/gallery3d/a/q;->fC:I

    return v0
.end method

.method c(Ljava/lang/String;)Lcom/android/gallery3d/a/q;
    .locals 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/a/q;->mMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/q;->mMap:Ljava/util/HashMap;

    .line 91
    :cond_0
    new-instance v0, Lcom/android/gallery3d/a/q;

    invoke-direct {v0}, Lcom/android/gallery3d/a/q;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/android/gallery3d/a/q;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_0
    return-object v0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/a/q;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/q;

    .line 88
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method d(Ljava/lang/String;)Lcom/android/gallery3d/a/q;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/gallery3d/a/q;->mMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/a/q;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/q;

    goto :goto_0
.end method

.method x(I)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput p1, p0, Lcom/android/gallery3d/a/q;->fC:I

    .line 103
    return-void
.end method
