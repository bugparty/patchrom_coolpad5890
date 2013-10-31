.class Lcom/android/gallery3d/app/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/an;


# instance fields
.field final synthetic o:Lcom/android/gallery3d/app/c;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/c;)V
    .locals 0
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/gallery3d/app/ba;->o:Lcom/android/gallery3d/app/c;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/c;Lcom/android/gallery3d/app/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 818
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/ba;-><init>(Lcom/android/gallery3d/app/c;)V

    return-void
.end method


# virtual methods
.method public aW()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/gallery3d/app/ba;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->f(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/app/cb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/ba;->o:Lcom/android/gallery3d/app/c;

    invoke-static {v0}, Lcom/android/gallery3d/app/c;->f(Lcom/android/gallery3d/app/c;)Lcom/android/gallery3d/app/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/cb;->G()V

    .line 821
    :cond_0
    return-void
.end method
