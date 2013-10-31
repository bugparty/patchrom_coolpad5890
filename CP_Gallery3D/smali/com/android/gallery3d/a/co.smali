.class Lcom/android/gallery3d/a/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/bu;


# instance fields
.field final synthetic GA:Lcom/android/gallery3d/a/bn;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/bn;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/gallery3d/a/co;->GA:Lcom/android/gallery3d/a/bn;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/android/gallery3d/a/ax;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-virtual {p2}, Lcom/android/gallery3d/a/ax;->am()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p2}, Lcom/android/gallery3d/a/ax;->delete()V

    .line 133
    :cond_0
    return-void
.end method
