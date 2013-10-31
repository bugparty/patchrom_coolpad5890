.class Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod$3;
.super Ljava/lang/Object;
.source "LockScreenWidgetManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;->showWidgets([ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod$3;->this$1:Lcom/android/internal/policy/impl/LockScreenWidgetManager$LockScreenWidgetChoiceMethod;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method
