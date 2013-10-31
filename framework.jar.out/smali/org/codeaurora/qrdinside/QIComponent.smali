.class public Lorg/codeaurora/qrdinside/QIComponent;
.super Ljava/lang/Object;
.source "QIComponent.java"


# instance fields
.field mComponentObj:Ljava/lang/Object;

.field mJarClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 3
    .parameter "ComponentName"
    .parameter "consArgs"
    .parameter "argTypes"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/qrdinside/QIComponent;->mJarClass:Ljava/lang/Class;

    .line 41
    iget-object v2, p0, Lorg/codeaurora/qrdinside/QIComponent;->mJarClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lorg/codeaurora/qrdinside/QIComponent;->mJarClass:Ljava/lang/Class;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 43
    .local v0, cons:Ljava/lang/reflect/Constructor;
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/qrdinside/QIComponent;->mComponentObj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0           #cons:Ljava/lang/reflect/Constructor;
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public CallMethod(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter "MethodName"
    .parameter "invokeArgs"
    .parameter "argTypes"

    .prologue
    .line 51
    const/4 v2, 0x0

    .line 53
    .local v2, retObj:Ljava/lang/Object;
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/qrdinside/QIComponent;->mJarClass:Ljava/lang/Class;

    invoke-virtual {v3, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 54
    .local v1, method:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lorg/codeaurora/qrdinside/QIComponent;->mComponentObj:Ljava/lang/Object;

    invoke-virtual {v1, v3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 58
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #retObj:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 55
    .restart local v2       #retObj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 56
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
