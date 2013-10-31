.class Lcom/android/gallery3d/a/k;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic ci:Lcom/android/gallery3d/a/h;

.field final synthetic cp:Ljava/util/ArrayList;

.field final synthetic cq:Lcom/android/gallery3d/b/v;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/h;Ljava/util/ArrayList;Lcom/android/gallery3d/b/v;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/gallery3d/a/k;->ci:Lcom/android/gallery3d/a/h;

    iput-object p2, p0, Lcom/android/gallery3d/a/k;->cp:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/gallery3d/a/k;->cq:Lcom/android/gallery3d/b/v;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/a/k;->ci:Lcom/android/gallery3d/a/h;

    iget-object v1, p0, Lcom/android/gallery3d/a/k;->cp:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/gallery3d/a/k;->cq:Lcom/android/gallery3d/b/v;

    invoke-static {v1, v2}, Lcom/android/gallery3d/a/h;->b(Ljava/util/ArrayList;Lcom/android/gallery3d/b/v;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/a/h;->a(Lcom/android/gallery3d/a/h;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    return-void
.end method
