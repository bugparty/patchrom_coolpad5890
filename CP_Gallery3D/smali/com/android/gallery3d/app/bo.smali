.class Lcom/android/gallery3d/app/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/ea;


# instance fields
.field final synthetic bU:Lcom/android/gallery3d/app/ak;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/gallery3d/app/bo;->bU:Lcom/android/gallery3d/app/ak;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/gallery3d/app/bo;->bU:Lcom/android/gallery3d/app/ak;

    invoke-static {v0}, Lcom/android/gallery3d/app/ak;->k(Lcom/android/gallery3d/app/ak;)V

    .line 758
    return-void
.end method
