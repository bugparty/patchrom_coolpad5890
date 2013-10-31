.class Lcom/android/gallery3d/app/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hl:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/gallery3d/app/ae;->hl:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/app/ae;->hl:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->a(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 127
    return-void
.end method
