.class Lcom/android/gallery3d/ui/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic cs:Lcom/android/gallery3d/ui/q;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/q;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/gallery3d/ui/ac;->cs:Lcom/android/gallery3d/ui/q;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/ui/ac;->cs:Lcom/android/gallery3d/ui/q;

    invoke-static {v0}, Lcom/android/gallery3d/ui/q;->a(Lcom/android/gallery3d/ui/q;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 104
    return-void
.end method
