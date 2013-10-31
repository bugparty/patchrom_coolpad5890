.class Lcom/android/gallery3d/app/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/an;


# instance fields
.field final synthetic bT:Lcom/android/gallery3d/app/dq;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/dq;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/gallery3d/app/cn;->bT:Lcom/android/gallery3d/app/dq;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/dq;Lcom/android/gallery3d/app/af;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/cn;-><init>(Lcom/android/gallery3d/app/dq;)V

    return-void
.end method


# virtual methods
.method public aW()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/gallery3d/app/cn;->bT:Lcom/android/gallery3d/app/dq;

    invoke-static {v0}, Lcom/android/gallery3d/app/dq;->b(Lcom/android/gallery3d/app/dq;)Lcom/android/gallery3d/app/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/h;->G()V

    .line 206
    return-void
.end method
