.class Lcom/android/internal/policy/impl/GlobalActions$5$2$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$5$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/policy/impl/GlobalActions$5$2;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$5$2;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$5$2$1;->this$2:Lcom/android/internal/policy/impl/GlobalActions$5$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 723
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$5$2$1$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/GlobalActions$5$2$1$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$5$2$1;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$5$2$1$1;->start()V

    .line 733
    return-void
.end method
