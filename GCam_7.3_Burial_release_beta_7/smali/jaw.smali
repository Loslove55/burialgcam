.class final Ljaw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljba;


# direct methods
.method public constructor <init>(Ljba;)V
    .locals 0

    iput-object p1, p0, Ljaw;->a:Ljba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ljaw;->a:Ljba;

    invoke-virtual {v0}, Ljav;->a()V

    return-void
.end method
