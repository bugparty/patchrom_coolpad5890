.class Lcom/android/gallery3d/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bp:Lcom/android/gallery3d/ui/dg;

.field final synthetic bq:Lcom/android/gallery3d/ui/ej;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/ej;Lcom/android/gallery3d/ui/dg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/gallery3d/ui/i;->bq:Lcom/android/gallery3d/ui/ej;

    iput-object p2, p0, Lcom/android/gallery3d/ui/i;->bp:Lcom/android/gallery3d/ui/dg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/gallery3d/ui/i;->bp:Lcom/android/gallery3d/ui/dg;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/dg;->en()V

    .line 335
    return-void
.end method
