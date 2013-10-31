.class public Lcom/android/gallery3d/a/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cacheFile:Ljava/io/File;

.field final synthetic cu:Lcom/android/gallery3d/a/as;

.field protected lk:J


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/as;JLjava/io/File;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/gallery3d/a/ae;->cu:Lcom/android/gallery3d/a/as;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-wide p2, p0, Lcom/android/gallery3d/a/ae;->lk:J

    .line 283
    invoke-static {p4}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/android/gallery3d/a/ae;->cacheFile:Ljava/io/File;

    .line 284
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/gallery3d/a/ae;->cu:Lcom/android/gallery3d/a/as;

    invoke-static {v0}, Lcom/android/gallery3d/a/as;->b(Lcom/android/gallery3d/a/as;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    return-void
.end method
