.class Lcom/railty/cerfandroid/CallFallbackActivity$3;
.super Ljava/lang/Object;
.source "CallFallbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/CallFallbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/CallFallbackActivity;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/CallFallbackActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/railty/cerfandroid/CallFallbackActivity$3;->this$0:Lcom/railty/cerfandroid/CallFallbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/railty/cerfandroid/CallFallbackActivity$3;->this$0:Lcom/railty/cerfandroid/CallFallbackActivity;

    new-instance v1, Lcom/railty/cerfandroid/CallFallbackActivity$3$1;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/CallFallbackActivity$3$1;-><init>(Lcom/railty/cerfandroid/CallFallbackActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/railty/cerfandroid/CallFallbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method
