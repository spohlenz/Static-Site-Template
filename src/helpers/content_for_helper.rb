module ContentForHelper
  def content_for?(name)
    content_for_blocks.key?(name.to_s)
  end

  def content_for(name, &block)
    content_for_blocks[name.to_s] = capture_haml(&block) if block_given?
    content_for_blocks[name.to_s]
  end

private
  def content_for_blocks
    @_content_for_blocks ||= {}
  end
end
