# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Jekyll::Diagrams::VegaRenderer do
  subject(:renderer) do
    described_class.new(Liquid::ParseContext.new, '')
  end

  describe '#build_command' do
    context 'when config is empty' do
      subject { renderer.build_command(config) }

      let(:config) { {} }

      it { is_expected.to eq 'vg2svg' }
    end
  end
end